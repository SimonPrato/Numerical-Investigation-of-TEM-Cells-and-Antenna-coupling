import numpy as np


def calculate_moment(e_field, phase_shift, output_power, frequency):

    a = output_power * 2
    b = output_power * 2 * np.exp(1j*phase_shift)
    print(np.abs(a[-1]+b[-1]))
    print(np.abs(a[-1]-b[-1]))
    print(np.rad2deg(phase_shift[-1]))

    c = 299792458
    l = c / frequency
    k = 2 * np.pi / l

    m_ez = (a+b)/e_field

    m_my = 1j*(a-b) / (e_field * k)
    m_hfss = 1j * m_my * 2 * np.pi * frequency * 1.256637 * np.pow(10.0,-6)

    return np.abs(m_ez), np.abs(m_hfss)

if __name__ == '__main__':
    print(calculate_moment((-820.958613447327 + 1j * 43.4872792296905), 0.6711, 1, 1000e6))

