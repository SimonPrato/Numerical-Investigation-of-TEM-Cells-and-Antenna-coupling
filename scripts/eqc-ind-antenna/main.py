from calculate_moments import *
import matplotlib.pyplot as plt 
import numpy as np


csv_file = f'data/free_loop/capacitance.csv'
data = pd.read_csv(csv_file, header=None, dtype=float, skiprows=1)
columns = [data[col].to_numpy()[1:] for col in data.columns]
antenna_capacitance = columns[2] 

for index, frequency in enumerate(frequencies):
    results = calc(output_power[index], output_voltage_phase_1[index], output_voltage_phase_2[index], input_voltage[index], input_impedance[index], frequency)

m_e = results['equ_ele_dipole_moment']
m_m = results['equ_mag_dipole_moment']

normed_m_e = np.abs(m_e) * 377
plt.style.use(['science', 'ieee'])
# Plot mit zwei y-Achsen
fig, ax1 = plt.subplots(figsize=(3.9, 2.64))
# Erste y-Achse für |m_ez| * 377
color = 'tab:red'
ax1.set_xlabel('Frequency [GHz]')
ax1.set_ylabel(r'Electric Dipole Moment $\left|m_e\right|\cdot 377 \Omega$ [V/m]')
ax1.plot(frequencies / 1e9, normed_m_e, label=r'$\left|m_e\right|\cdot 377\Omega$')
ax1.tick_params(axis='y')

ax1.minorticks_on()

ax1.grid(which='major', linestyle='-', linewidth=0.5, color='#BBBBBB')
ax1.grid(which='minor', linestyle=':', linewidth=0.4, color='#DDDDDD')
ax1.ticklabel_format(axis='y', style='sci', scilimits=(0, 0))

# Zweite y-Achse für |m_m|
ax2 = ax1.twinx()
color = 'tab:blue'
ax2.set_ylabel(r'Magnetic Dipole Moment $\left|m_m\right|$ [V/m]')
ax2.plot(frequencies / 1e9, np.abs(m_m), label=r'$\left|m_m\right|$', linestyle="--")
ax2.tick_params(axis='y')

# Titel und Anzeige
fig.suptitle(f'Dipole moments of {antenna} antenna in TEM cell over frequency', y=0.93)
fig.tight_layout()
if np.max(normed_m_e) > np.max(np.abs(m_m)):
    ax1.set_ylim(0, np.max(normed_m_e))
    ax2.set_ylim(0, np.max(normed_m_e))
else:
    ax1.set_ylim(0, np.max(np.abs(m_m)))
    ax2.set_ylim(0, np.max(np.abs(m_m)))


ax1.set_xlim(np.min(frequencies/1e9), np.max(frequencies/1e9))
ax2.set_xlim(np.min(frequencies/1e9), np.max(frequencies/1e9))

ax2.ticklabel_format(axis='y', style='sci', scilimits=(0, 0))

legend = fig.legend(loc='upper left', bbox_to_anchor=(0.15, 0.82), frameon=True)
legend.get_frame().set_facecolor('white')
fig.savefig(f"plot_outputs/{antenna}.png",dpi=600)
plt.show()
