import numpy as np

def calc(output_power, output_voltage_phase_1, output_voltage_phase_2, 
         input_voltage, input_impedance, frequency):
    """
    Calculates currents in a circuit model with two output phases.
    
    Parameters:
    -----------
    output_power : float
        Output power in Watts.
    output_voltage_phase_1 : float
        Phase angle for output voltage phase 1 in radians.
    output_voltage_phase_2 : float
        Phase angle for output voltage phase 2 in radians.
    input_voltage : complex
        Input voltage.
    input_impedance : complex
        Input impedance.
    frequency : float
        Frequency in Hz.
    
    Returns:
    --------
    dict
        Dictionary containing all calculated variables.
    """
    # Output voltages
    u_1 = np.sqrt(output_power * 50) * np.exp(1j * output_voltage_phase_1)
    u_2 = np.sqrt(output_power * 50) * np.exp(1j * output_voltage_phase_2)

    # Component values
    ct = 3.29e-12  # tem cell capacitance
    lt = 8.31e-9  # tem cell inductance
    ca = 38.36e-15  # antenna capacitance
    la = 2.15e-9    # antenna inductance 

    # circuit values
    i_ca = input_voltage * 1j * 2 * np.pi * frequency * ca
    i = input_voltage / input_impedance
    i_r1 = u_1 / 50
    i_r2 = u_2 / 50
    i_ct1 = u_1 * 1j * 2 * np.pi * frequency * ct
    i_ct2 = u_2 * 1j * 2 * np.pi * frequency * ct
    i_lt1 = i_r1 + i_ct1
    i_lt2 = i_r2 + i_ct2
    i_ck = i_lt1 + i_lt2
    i_la = i - i_ca - i_ck
    m = (input_voltage - 1j * 2 * np.pi * frequency * la * i_la) / (1j * 2 * np.pi * frequency * (i_lt1 - i_lt2))
    inductive_power = np.conj(i_la) * input_voltage * np.cos(np.angle(i_la))
    a_minus_b = np.sqrt(inductive_power) / 2
    equ_mag_dipole_moment = 1j * a_minus_b / (183.1858* 2 * np.pi * frequency) * 299792458 * 2 * np.pi * frequency * 1.256637 * pow(10.0,-6)
    a_plus_b = np.sqrt((i_ca/2)**2 * 50)
    equ_ele_dipole_moment = a_plus_b / 183.1858

    # Collect all calculated variables
    results = {
        'u_1': u_1,
        'u_2': u_2,
        'ct': ct,
        'lt': lt,
        'ca': ca,
        'la': la,
        'i_ca': i_ca,
        'i': i,
        'i_r1': i_r1,
        'i_r2': i_r2,
        'i_ct1': i_ct1,
        'i_ct2': i_ct2,
        'i_lt1': i_lt1,
        'i_lt2': i_lt2,
        'i_ck': i_ck,
        'i_la': i_la,
        'm': m,
        'inductive_power': inductive_power,
        'a_minus_b': a_minus_b,
        'equ_mag_dipole_moment': equ_mag_dipole_moment
    }
    
    return results

# Example usage and output of all variables
if __name__ == "__main__":
    results = main(output_power=1.4709888e-5, output_voltage_phase_1=np.deg2rad(-56.86),
                   output_voltage_phase_2=np.deg2rad(-244.2), input_voltage=3.66, 
                   input_impedance=13.91 * np.exp(89.9984), frequency=1e9)
    
    print("Calculated variables:")
    for name, value in results.items():
        print(f"{name}: {np.abs(value)} ∠ {np.degrees(np.angle(value))}°")

