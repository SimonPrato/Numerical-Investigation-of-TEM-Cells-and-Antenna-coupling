from modules.read_csv import *
from modules.calculate_moments import *
from modules.plot_moments import *

import numpy as np
import matplotlib.pyplot as plt


# === Configuration ===
antenna_power = 1.0  # in Watts
antenna_type = "loop"

# === Data Loading ===
columns_phase_shift, columns_magnitude, columns_efield = read_csv(antenna_type=antenna_type)

# Convert frequencies from GHz to Hz
frequencies = columns_phase_shift[0] * 1e9

# Adjust positive phase values by subtracting 2π
columns_phase_shift[1][columns_phase_shift[1] > 0] -= 2 * np.pi

# === Phase, Magnitude, and E-Field Processing ===
phase_shift = columns_phase_shift[1] - columns_phase_shift[2]
e_field = columns_efield[2]
e_field_freq = columns_efield[1] * 1e9

# Interpolate E-field to match frequency grid
e_field_interp = np.interp(frequencies, e_field_freq, e_field)

# Compute output power from dB magnitude
magnitude = columns_magnitude[1]
output_power = antenna_power * np.power(10.0, magnitude / 10.0)

# === Plotting and Moment Calculations ===
plot_phase_shift(columns_phase_shift, frequencies, antenna_type)

m_e, m_m = calculate_moment(e_field_interp, phase_shift, output_power, frequencies)
plot_moments(m_e, m_m, frequencies, antenna_type)

# Optional: visualize power and E-field relationship
plot_output_power_e_field(frequencies, output_power, e_field_interp)

