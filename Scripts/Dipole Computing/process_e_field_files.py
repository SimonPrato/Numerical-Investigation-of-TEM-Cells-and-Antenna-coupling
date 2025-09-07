import os
import re
import math
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np

def get_e_fields(folder_path):
    # Überprüfen, ob der Ordner existiert
    extraced_frequency_values = []
    extracted_e_values = []
    if not os.path.exists(folder_path):
        raise FileNotFoundError(f"Der Ordner {folder_path} existiert nicht.")

    # Alle Dateien im Ordner durchlaufen
    for file_name in os.listdir(folder_path):
        file_path = os.path.join(folder_path, file_name)
        if os.path.isfile(file_path):
            with open(file_path, 'r') as file:
                content = file.read()
                # Werte in den Klammern extrahieren
                matches = re.findall(r'\(([^)]+)\)', content)
                for match in matches:
                    # Werte in der Klammer splitten und die letzten beiden extrahieren
                    values = match.split(',')
                    if len(values) >= 2:
                        x = float(values[-2].strip())
                        y = float(values[-1].strip())
                        extraced_frequency_values.append(file_name)  # Hier wird der Dateiname als Frequenzwert verwendet
                        extracted_e_values.append((x, y))

    return extraced_frequency_values, extracted_e_values

# Beispielaufruf
folder_path = r"C:\Users\Simon Prato\Documents\Persoenliches\Studium\Masterarbeit\Inverted F Antenna\Ansys Simulation Files\Simulation Results\E field over Frequency"  # Pfad zum Ordner
extracted_frequency_values, extracted_e_values = get_e_fields(folder_path)

extracted_frequency_values = [float(re.sub(r"[^\d.]", "", value).strip(".")) for value in extracted_frequency_values]



def extract_columns_from_csv(file_path):
    # CSV-Datei lesen
    try:
        data = pd.read_csv(file_path)
    except FileNotFoundError:
        raise FileNotFoundError(f"Die Datei {file_path} wurde nicht gefunden.")
    except pd.errors.EmptyDataError:
        raise ValueError(f"Die Datei {file_path} ist leer.")
    except pd.errors.ParserError:
        raise ValueError(f"Die Datei {file_path} konnte nicht geparst werden.")

    # Überprüfen, ob die benötigten Spalten existieren
    required_columns = ['Freq [GHz]', 'ang_rad(S(waveport2:1,antenna)) [rad]', 'ang_rad(S(waveport1:1,antenna)) [rad]']
    for column in required_columns:
        if column not in data.columns:
            raise ValueError(f"Die Spalte '{column}' fehlt in der Datei.")

    # Spalten extrahieren
    freq_column = data['Freq [GHz]']
    ang_1 = data['ang_rad(S(waveport2:1,antenna)) [rad]']
    ang_2 = data['ang_rad(S(waveport1:1,antenna)) [rad]']

    return freq_column, ang_1, ang_2

# Beispielaufruf
file_path = r"C:\Users\Simon Prato\Documents\Persoenliches\Studium\Masterarbeit\Inverted F Antenna\Ansys Simulation Files\Simulation Results\angles_waveports.csv"  # Pfad zur CSV-Datei
freq, ang_1, ang_2 = extract_columns_from_csv(file_path)

freq = freq * 1000

# Indizes finden, bei denen die Werte in freq und extracted_frequency_values gleich sind
arr1 = np.array(freq)
arr2 = np.array(extracted_frequency_values[::3])

# For each element in arr1, find the index in arr2 with the minimum absolute difference
indices = np.abs(arr1[:, None] - arr2).argmin(axis=0)


# Werte in 'mode', die den gefundenen Indizes entsprechen
matching_ang1_values = ang_1.iloc[indices]
matching_ang2_values = ang_2.iloc[indices]

every_third_entry = extracted_e_values[2::3]
complex_list = [complex(x, y) * np.sqrt(2) for x, y in every_third_entry]
complex_series = pd.Series(complex_list)

matching_ang1_values_np = matching_ang1_values.to_numpy()
matching_ang2_values_np = matching_ang2_values.to_numpy()
complex_series_np = complex_series.to_numpy()
frequencies = np.array(extracted_frequency_values[::3])

m_ez = (1 * np.exp(1j * matching_ang1_values_np) + 1 * np.exp(1j * matching_ang2_values_np)) / complex_series_np

m_my = (1 * np.exp(1j * matching_ang1_values_np) - 1 * np.exp(1j * matching_ang2_values_np)) / (-1j * 11.527 * complex_series_np)
m_my_real = m_my * 1j * 2 * np.pi * frequencies * 1000000 * 1.256637 * np.pow(10.0,-6)


print(frequencies)

fig, ax1 = plt.subplots()
x_sorted, y_sorted = zip(*sorted(zip(frequencies, np.abs(m_ez))))
ax1.plot(x_sorted, y_sorted, marker=".", color='b', label='|$m_{ez}$|')
ax1.grid()
ax1.set_ylabel("Magnitude of |$m_{ez}$| [A$\cdot$m]")

ax2 = ax1.twinx()
x_sorted, y_sorted = zip(*sorted(zip(frequencies, np.abs(m_my))))
ax2.plot(x_sorted, y_sorted, marker=".", color='r', label='|$m_{my}$|')
ax2.set_ylabel("Magnitude of |$m_{my}$| [A$\cdot$m$^2$]")

fig.suptitle('Electric and Magnetic Dipole Moments over Frequency')
fig.supxlabel('Frequency [MHz]')
fig.legend()
fig.tight_layout()
plt.show()


x_sorted, y_sorted = zip(*sorted(zip(frequencies, np.abs(m_my_real))))
plt.plot(x_sorted, y_sorted, marker=".", color='b', label='|$m_{my,real}$|')

plt.show()


x_sorted, y_sorted = zip(*sorted(zip(frequencies, np.abs(complex_series_np))))
plt.plot(x_sorted, y_sorted, marker=".", color='b', label='|$m_{my,real}$|')

plt.show()

x_sorted, y_sorted = zip(*sorted(zip(frequencies, np.abs(matching_ang1_values_np-matching_ang2_values_np))))
plt.plot(x_sorted, y_sorted, marker=".", color='b', label='|$m_{my,real}$|')

plt.show()
print(np.abs(2 * np.exp(1j * matching_ang1_values_np) - 2 * np.exp(1j * matching_ang2_values_np)))
x_sorted, y_sorted = zip(*sorted(zip(frequencies, np.angle(m_my)-np.angle(m_ez))))
plt.plot(x_sorted, y_sorted, marker=".", color='b', label='|$m_{my,real}$|')
x_sorted, y_sorted = zip(*sorted(zip(frequencies, np.angle(m_ez))))
plt.plot(x_sorted, y_sorted, marker=".", color='r', label='|$m_{my,real}$|')
x_sorted, y_sorted = zip(*sorted(zip(frequencies, np.angle(m_my_real))))
plt.plot(x_sorted, y_sorted, marker=".", color='g', label='|$m_{my,real}$|')

plt.show()
