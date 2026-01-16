import numpy as np


def calculate_moments(e_field: complex, phase_shift: float, 
                                   output_power: float, frequency: float) -> tuple[np.ndarray, np.ndarray]:
    """
    Calculate electric (m_ez) and magnetic (m_hfss) moments for antenna analysis.
    
    Args:
        e_field: Complex electric field value
        phase_shift: Phase difference in radians
        output_power: Antenna output power in Watts
        frequency: Frequency in Hz
        
    Returns:
        Tuple of absolute electric and magnetic moments
    """
    # Physical constants
    speed_of_light = 299792458.0  # m/s
    mu_0 = 1.256637e-6            # H/m (permeability of free space)
    
    wavelength = speed_of_light / frequency
    wave_number = 2 * np.pi / wavelength
    
    # Moment source terms
    source_real = 2 * output_power
    source_complex = 2 * output_power * np.exp(1j * phase_shift)
    
    # Electric moment (z-component)
    m_electric = np.abs((source_real + source_complex) / e_field)
    
    # Magnetic moment calculation
    m_magnetic_intermediate = 1j * (source_real - source_complex) / (e_field * wave_number)
    m_magnetic = np.abs(1j * m_magnetic_intermediate * 2 * np.pi * frequency * mu_0)
    
    print(f"Max magnetic moment magnitude: {np.max(m_magnetic):.6f}")
    
    return m_electric, m_magnetic


if __name__ == "__main__":
    # Test case
    test_e_field = -820.958613447327 + 1j * 43.4872792296905
    test_phase_shift = 0.6711
    test_power = 1.0
    test_freq = 1000e6  # 1 GHz
    
    m_e, m_h = calculate_electromagnetic_moments(
        test_e_field, test_phase_shift, test_power, test_freq
    )

