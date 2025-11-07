from modules.read_csv import *
from modules.calculate_moments import *
from modules.plot_moments import *
import numpy as np
import matplotlib.pyplot as plt


antenna_power = 1000000  # in Watt
antenna_type = "monopole"
columns_phase_shift, columns_magnitude = read_csv(antenna_type=antenna_type)
frequencies = columns_phase_shift[0] * 1000000000 # Convert into Hz
phase_shift = columns_phase_shift[1] - columns_phase_shift[2] + np.pi

magnitude = columns_magnitude[1]
output_power = antenna_power * np.pow(10.0, magnitude/10)
e_field_approx = np.sqrt(output_power) / 0.0012163

plot_phase_shift(columns_phase_shift, frequencies, antenna_type)

m_e, m_m = calculate_moment(e_field_approx, phase_shift, output_power, frequencies)
plot_moments(m_e, m_m, frequencies, antenna_type)

plot_output_power_e_field(frequencies, output_power, e_field_approx)


