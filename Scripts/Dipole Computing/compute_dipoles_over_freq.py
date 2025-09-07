from read_csv import *
from moments_calculator import *
import numpy as np
import matplotlib.pyplot as plt

antenna_power = 142588.47188  # in Watt
columns_phase_shift, columns_magnitude = read_csv()
frequencies = columns_phase_shift[0] * 1000000000
phase_shift = columns_phase_shift[1] - columns_phase_shift[2]
magnitude = columns_magnitude[1]
output_power = antenna_power * np.pow(10.0, magnitude/10)
e_field_approx = np.sqrt(output_power) / 0.0012194

print(e_field_approx)

m_ez, m_m = calculate_moment(e_field_approx, phase_shift, output_power, frequencies)


plt.rcParams.update({'font.size': 14})
# Plot mit zwei y-Achsen
fig, ax1 = plt.subplots(figsize=(12, 6))

# Erste y-Achse für |m_ez| * 377
color = 'tab:red'
ax1.set_xlabel('Frequency (GHz)')
ax1.set_ylabel('Electric Dipole Moment |$m_e$| in A/m', color=color)
ax1.plot(frequencies/1e9, np.abs(m_ez) * 377, linestyle='-', color=color, label='|$m_e$|')
ax1.tick_params(axis='y', labelcolor=color)
ax1.grid(True)

# Zweite y-Achse für |m_m|
ax2 = ax1.twinx()
color = 'tab:blue'
ax2.set_ylabel('Magnetic Dipole Moment |$m_m$| in V/m', color=color)
ax2.plot(frequencies/1e9, np.abs(m_m), linestyle='-', color=color, label='|$m_m$|')
ax2.tick_params(axis='y', labelcolor=color)

# Titel und Anzeige
fig.suptitle('Dipole moments over frequency')
fig.tight_layout()
ax2.set_xlim(0.1, 1)
ax2.set_ylim(0, 1.8)
ax1.set_yticks(ax2.get_yticks())
ax2.set_yticks(ax1.get_yticks())
fig.legend(loc='upper left', bbox_to_anchor=(0.075, 0.9))
plt.show()


# Plot mit zwei y-Achsen
plt.rcParams.update({'font.size': 18})  # Schriftgröße auf 18 setzen
fig, ax1 = plt.subplots(figsize=(12, 6))

# Erste y-Achse für e_field_approx
color = 'tab:green'
ax1.set_xlabel('Frequency [GHz]')
ax1.set_ylabel(r'$|a\cdot e_{0,z}|$ Approximation [V/m]', color=color)
ax1.plot(frequencies / 1e9, e_field_approx, linestyle='-', color=color, label='$E_{field}$ Approximation')
ax1.tick_params(axis='y', labelcolor=color)
ax1.set_xlim(0.1, 1)
ax1.set_ylim(0, 900)
ax1.grid(True)

# Zweite y-Achse für output_power
ax2 = ax1.twinx()
color = 'tab:orange'
ax2.set_ylabel('Output Power [W]', color=color)
ax2.plot(frequencies / 1e9, output_power, linestyle='--', color=color, label='Output Power [W]')
ax2.tick_params(axis='y', labelcolor=color)

# Titel und Anzeige
fig.suptitle('Electric field approximation and Output Power over frequency')
fig.tight_layout()
plt.show()
