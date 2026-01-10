from matplotlib import pyplot as plt
import numpy as np
import scienceplots  # Install via: pip install SciencePlots


def plot_phase_shift(columns_phase_shift, frequencies, antenna_type):
    """
    Plot phase shift comparison between two waveports over frequency.
    
    Args:
        columns_phase_shift: Array containing frequency and phase data for both waveports
        frequencies: Frequency array
        antenna_type: String identifier for antenna type
    """
    # Configure plot style
    antenna_name = antenna_type.replace('-', ' ')
    plt.style.use(['science', 'ieee'])
    fig, ax1 = plt.subplots(figsize=(3.9, 2.64))

    # Extract phase data
    phase_waveport1 = columns_phase_shift[1]
    phase_waveport2 = columns_phase_shift[2]

    # Plot phase curves
    ax1.plot(frequencies / 1e9, phase_waveport1, 
             linestyle='-', color='black', label='Waveport 1')
    ax1.plot(frequencies / 1e9, phase_waveport2, 
             linestyle='--', color='black', label='Waveport 2')

    # First delta annotation (at 1/3 position)
    idx_first = phase_waveport1.size // 3
    marker1_y_first = phase_waveport1[idx_first]
    marker2_y_first = phase_waveport2[idx_first]
    delta_first = marker1_y_first - marker2_y_first
    
    ax1.plot(columns_phase_shift[0][idx_first], marker1_y_first, 
             linestyle='-', color='black', marker='.', markersize=5)
    ax1.plot(columns_phase_shift[0][idx_first], marker2_y_first, 
             linestyle='-', color='black', marker='.', markersize=5)
    ax1.text(columns_phase_shift[0][idx_first] + 0.1, 
             (marker1_y_first + marker2_y_first) / 2, 
             f'$\Delta$ = {delta_first:.2f} rad',
             fontsize=10, color='black', ha='left')
    ax1.annotate('', 
                 xy=(columns_phase_shift[0][idx_first], marker2_y_first),
                 xytext=(columns_phase_shift[0][idx_first], marker1_y_first),
                 arrowprops=dict(arrowstyle='<->', color='black', lw=1))

    # Second delta annotation (at 2/3 position)
    idx_second = (phase_waveport1.size // 3) * 2
    marker1_y_second = phase_waveport1[idx_second]
    marker2_y_second = phase_waveport2[idx_second]
    delta_second = marker1_y_second - marker2_y_second
    
    ax1.plot(columns_phase_shift[0][idx_second], marker1_y_second, 
             linestyle='-', color='black', marker='.', markersize=5)
    ax1.plot(columns_phase_shift[0][idx_second], marker2_y_second, 
             linestyle='-', color='black', marker='.', markersize=5)
    ax1.text(columns_phase_shift[0][idx_second] - 1.0, 
             (marker1_y_second + marker2_y_second) / 2, 
             f'$\Delta$ = {delta_second:.2f} rad',
             fontsize=10, color='black', ha='left')
    ax1.annotate('', 
                 xy=(columns_phase_shift[0][idx_second], marker2_y_second),
                 xytext=(columns_phase_shift[0][idx_second], marker1_y_second),
                 arrowprops=dict(arrowstyle='<->', color='black', lw=1))

    # Configure axes and labels
    ax1.set_xlabel('Frequency (GHz)')
    ax1.set_ylabel('Phase Shift (rad)')
    fig.suptitle(f'Phase Shifts of {antenna_name} antenna over frequency')
    ax1.set_xlim(np.min(frequencies / 1e9), np.max(frequencies / 1e9))

    # Configure grid
    ax1.minorticks_on()
    ax1.grid(which='major', linestyle='-', linewidth=0.5, color='#BBBBBB')
    ax1.grid(which='minor', linestyle=':', linewidth=0.4, color='#DDDDDD')

    # Configure secondary y-axis (hidden)
    ax2 = ax1.twinx()
    ax2.set_ylabel(".")
    ax2.tick_params(axis='y', colors='white')
    ax2.yaxis.label.set_color('white')

    # Adjust y-axis limits to fit data
    phase_max = max(np.max(phase_waveport1), np.max(phase_waveport2))
    phase_min = min(np.min(phase_waveport1), np.min(phase_waveport2))
    current_ylim = ax1.get_ylim()
    ax1.set_ylim(phase_min, phase_max)

    # Finalize plot
    fig.tight_layout()
    legend = fig.legend(loc='lower left', bbox_to_anchor=(0.15, 0.17), frameon=True)
    legend.get_frame().set_facecolor('white')
    fig.savefig(f"output/{antenna_type}-phase.png", dpi=600)
    plt.show()


def plot_moments(m_e, m_m, frequencies, antenna_type):
    """
    Plot electric and magnetic dipole moments over frequency.
    
    Args:
        m_e: Electric dipole moment array
        m_m: Magnetic dipole moment array
        frequencies: Frequency array
        antenna_type: String identifier for antenna type
    """
    antenna_name = antenna_type.replace('-', ' ')
    normalized_m_e = np.abs(m_e) * 377
    
    plt.style.use(['science', 'ieee'])
    fig, ax1 = plt.subplots(figsize=(3.9, 2.64))
    
    # Plot electric dipole moment on primary y-axis
    ax1.set_xlabel('Frequency (GHz)')
    ax1.set_ylabel(r'Electric Dipole Moment $\left|m_e\right|\cdot 377 \Omega$ (Vm)')
    ax1.plot(frequencies / 1e9, normalized_m_e, 
             label=r'$\left|m_e\right| \cdot 377 \Omega$', 
             color="black", linestyle="-")
    ax1.tick_params(axis='y')
    ax1.minorticks_on()
    ax1.grid(which='major', linestyle='-', linewidth=0.5, color='#BBBBBB')
    ax1.grid(which='minor', linestyle=':', linewidth=0.4, color='#DDDDDD')
    ax1.ticklabel_format(axis='y', style='sci', scilimits=(0, 0))
    
    # Plot magnetic dipole moment on secondary y-axis
    ax2 = ax1.twinx()
    ax2.set_ylabel(r'Magnetic Dipole Moment $\left|m_m\right|$ (Vm)')
    ax2.plot(frequencies / 1e9, np.abs(m_m), 
             label=r'$\left|m_m\right|$', 
             linestyle="--", color="black")
    ax2.tick_params(axis='y')
    ax2.ticklabel_format(axis='y', style='sci', scilimits=(0, 0))
    
    # Configure title and limits
    fig.suptitle(f'Dipole moments of {antenna_name} antenna in TEM cell over frequency', 
                 y=0.93)
    
    # Set matching y-axis limits
    max_value = max(np.max(normalized_m_e), np.max(np.abs(m_m)))
    ax1.set_ylim(0, max_value)
    ax2.set_ylim(0, max_value)
    
    ax1.set_xlim(np.min(frequencies / 1e9), np.max(frequencies / 1e9))
    ax2.set_xlim(np.min(frequencies / 1e9), np.max(frequencies / 1e9))
    
    # Finalize plot
    fig.tight_layout()
    legend = fig.legend(loc='upper left', bbox_to_anchor=(0.15, 0.82), frameon=True)
    legend.get_frame().set_facecolor('white')
    fig.savefig(f"output/{antenna_type}-moments.png", dpi=600)
    plt.show()


def plot_output_power_e_field(frequencies, output_power, e_field, antenna_type):
    """
    Plot electric field and output power over frequency.
    
    Args:
        frequencies: Frequency array
        output_power: Output power array
        e_field: Electric field array
    """
    plt.style.use(['science', 'ieee'])
    fig, ax1 = plt.subplots(figsize=(3.9, 2.64))
    
    # Plot electric field on primary y-axis
    ax1.set_xlabel('Frequency (GHz)')
    ax1.set_ylabel(r'$|E_y|$ (V/m)')
    ax1.plot(frequencies / 1e9, e_field, 
             linestyle='-', label='$E_{y}$')
    ax1.tick_params(axis='y')
    ax1.set_xlim(np.min(frequencies / 1e9), np.max(frequencies / 1e9))
    ax1.set_ylim(0, np.max(e_field))
    ax1.minorticks_on()
    ax1.ticklabel_format(axis='y', style='sci', scilimits=(0, 0))
    ax1.grid(which='major', linestyle='-', linewidth=0.5, color='#BBBBBB')
    ax1.grid(which='minor', linestyle=':', linewidth=0.4, color='#DDDDDD')
    
    # Plot output power on secondary y-axis
    ax2 = ax1.twinx()
    ax2.set_ylabel('Output power (W)')
    ax2.plot(frequencies / 1e9, output_power, 
             linestyle='--', label='Output power')
    ax2.tick_params(axis='y')
    ax2.ticklabel_format(axis='y', style='sci', scilimits=(0, 0))
    
    # Finalize plot
    fig.suptitle('Electric field and output power over frequency', y=0.93)
    fig.tight_layout()
    legend = fig.legend(loc='upper left', bbox_to_anchor=(0.15, 0.82), frameon=True)
    legend.get_frame().set_facecolor('white')
    fig.savefig(f"output/{antenna_type}-output-power.png", dpi=600)
    plt.show()
