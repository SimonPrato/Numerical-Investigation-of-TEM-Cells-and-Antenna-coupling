from matplotlib import pyplot as plt
import numpy as np
import scienceplots  # You need to install this package first via: pip install SciencePlots


def plot_phase_shift(columns_phase_shift, frequencies, antenna_type):
    # Plot von columns_phase_shift[1] und columns_phase_shift[0] gegen Frequenz
    # plt.rcParams.update({'font.size': 18})  # Schriftgröße auf 18 setzen
    # Use the 'science' style together with 'ieee' for IEEE formatting
    antenna_name = antenna_type.replace('-', ' ')
    plt.style.use(['science', 'ieee'])
    fig, ax1 = plt.subplots(figsize=(3.9, 2.64))

    phase1 =  columns_phase_shift[1]
    phase2 = columns_phase_shift[2]

    marker1_y = phase1[phase1.size//3]
    marker2_y =phase2[phase2.size//3]
    delta = - marker2_y + marker1_y
    ax1.plot(frequencies / 1e9, phase1, linestyle='-', color='black', label='Waveport 1')
    ax1.plot(frequencies / 1e9, phase2, linestyle='--', color='black', label='Waveport 2')
    ax1.plot(columns_phase_shift[0][phase2.size//3], marker1_y, linestyle='-', color='black', marker='.', markersize=5)
    ax1.plot(columns_phase_shift[0][phase2.size//3], marker2_y, linestyle='-', color='black', marker='.', markersize=5)
    ax1.text(columns_phase_shift[0][phase2.size//3]+0.1, (marker1_y + marker2_y) / 2, f'$\Delta$ =  {delta:.2f} rad',
             fontsize=10, color='black', ha='left')
    ax1.annotate('', xy=(columns_phase_shift[0][phase2.size//3], marker2_y),
                 xytext=(columns_phase_shift[0][phase2.size//3], marker1_y),
                 arrowprops=dict(arrowstyle='<->', color='black', lw=1))

    marker1_y = phase1[phase2.size//3*2]
    marker2_y = phase2[phase2.size//3*2]
    delta = -marker2_y + marker1_y
    ax1.plot(columns_phase_shift[0][phase2.size//3*2], marker1_y, linestyle='-', color='black', marker='.', markersize=5)
    ax1.plot(columns_phase_shift[0][phase2.size//3*2], marker2_y, linestyle='-', color='black', marker='.', markersize=5)
    ax1.text(columns_phase_shift[0][phase2.size//3*2]-1.0, (marker1_y + marker2_y) / 2, f'$\Delta$ =  {delta:.2f} rad',
             fontsize=10, color='black', ha='left')
    ax1.annotate('', xy=(columns_phase_shift[0][phase2.size//3*2], marker2_y),
                 xytext=(columns_phase_shift[0][phase2.size//3*2], marker1_y),
                 arrowprops=dict(arrowstyle='<->', color='black', lw=1))
    ax1.set_xlabel('Frequency [GHz]')
    ax1.set_ylabel('Phase Shift [rad]')
    fig.suptitle(f'Phase Shifts of {antenna_name} antenna over frequency')
    ax1.set_xlim(np.min(frequencies/1e9), np.max(frequencies/1e9))

    ax1.minorticks_on()
    ax1.grid(which='major', linestyle='-', linewidth=0.5, color='#BBBBBB')
    ax1.grid(which='minor', linestyle=':', linewidth=0.4, color='#DDDDDD')

    ax2 = ax1.twinx()


    if np.max(phase1) > np.max(phase2):
        current_ylim = ax1.get_ylim()  # Get current limits (min, max)
        ax1.set_ylim(current_ylim[0], np.max(phase1))  # Set lower limit unchanged, upper new
    else:
        current_ylim = ax1.get_ylim()  # Get current limits (min, max)
        ax1.set_ylim(current_ylim[0], np.max(phase2))

    if np.min(phase1) < np.min(phase2):
        current_ylim = ax1.get_ylim()  # Get current limits (min, max)
        ax1.set_ylim(np.min(phase1), current_ylim[1])  # Set lower limit unchanged, upper new
    else:
        current_ylim = ax1.get_ylim()  # Get current limits (min, max)
        ax1.set_ylim(np.min(phase2), current_ylim[1])

    ax2.set_ylabel(".")

    ax2.tick_params(axis='y', colors='white')

    # Change y-axis label color to blue
    ax2.yaxis.label.set_color('white')

    fig.tight_layout()

    legend = fig.legend(loc='lower left', bbox_to_anchor=(0.15, 0.17), frameon=True)
    legend.get_frame().set_facecolor('white')
    fig.savefig(f"output/{antenna_type}_phase.png",dpi=600)
    plt.show()


def plot_moments(m_e, m_m, frequencies, antenna_type):

    antenna_name = antenna_type.replace('-', ' ')
    normed_m_e = np.abs(m_e) * 377

    plt.style.use(['science', 'ieee'])

    # Plot mit zwei y-Achsen
    fig, ax1 = plt.subplots(figsize=(3.9, 2.64))
    # Erste y-Achse für |m_ez| * 377
    color = 'tab:red'
    ax1.set_xlabel('Frequency [GHz]')
    ax1.set_ylabel(r'Electric Dipole Moment $\left|m_e\right|\cdot 377 \Omega$ (Vm)')
    ax1.plot(frequencies / 1e9, normed_m_e, label=r'$\left|m_e\right| \cdot 377 \Omega$', color="black", linestyle="-")
#    ax1.plot(freq_2 / 1e9, normed_m_e_2, label=r'$\left|m_e\right|$ schematic', color="red", linestyle="--")
    ax1.tick_params(axis='y')

    ax1.minorticks_on()

    ax1.grid(which='major', linestyle='-', linewidth=0.5, color='#BBBBBB')
    ax1.grid(which='minor', linestyle=':', linewidth=0.4, color='#DDDDDD')
    ax1.ticklabel_format(axis='y', style='sci', scilimits=(0, 0))

    # Zweite y-Achse für |m_m|
    ax2 = ax1.twinx()
    color = 'tab:blue'
    ax2.set_ylabel(r'Magnetic Dipole Moment $\left|m_m\right|$ (Vm)')
    ax2.plot(frequencies / 1e9, np.abs(m_m), label=r'$\left|m_m\right|$', linestyle="--", color="black")
    #ax2.plot(freq_2 / 1e9, np.abs(m_m_2), label=r'$\left|m_m\right|$ schematic', linestyle="--", color="blue")
    ax2.tick_params(axis='y')

    # Titel und Anzeige
    fig.suptitle(f'Dipole moments of {antenna_name} antenna in TEM cell over frequency', y=0.93)
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
    fig.savefig(f"output/{antenna_type}.png",dpi=600)
    plt.show()



def plot_output_power_e_field(frequencies, output_power, e_field_approx):

    # Plot mit zwei y-Achsen
    plt.style.use(['science', 'ieee'])
    fig, ax1 = plt.subplots(figsize=(3.9, 2.64))

    # Erste y-Achse für e_field_approx
    ax1.set_xlabel('Frequency [GHz]')
    ax1.set_ylabel(r'$|E_y|$ [Vm]')
    ax1.plot(frequencies / 1e9, e_field_approx, linestyle='-', label='$E_{y}$')
    ax1.tick_params(axis='y')
    ax1.set_xlim(np.min(frequencies/1e9), np.max(frequencies/1e9))
    ax1.set_ylim(0, np.max(e_field_approx))
    ax1.grid(True)
    # Zweite y-Achse für output_power
    ax2 = ax1.twinx()
    ax2.set_ylabel('Output power [W]')
    ax2.plot(frequencies / 1e9, output_power, linestyle='--', label='Output power')
    ax2.tick_params(axis='y')

    ax1.minorticks_on()
    ax1.ticklabel_format(axis='y', style='sci', scilimits=(0, 0))
    ax2.ticklabel_format(axis='y', style='sci', scilimits=(0, 0))

    ax1.grid(which='major', linestyle='-', linewidth=0.5, color='#BBBBBB')
    ax1.grid(which='minor', linestyle=':', linewidth=0.4, color='#DDDDDD')

    legend = fig.legend(loc='upper left', bbox_to_anchor=(0.15, 0.82), frameon=True)
    legend.get_frame().set_facecolor('white')
    # Titel und Anzeige
    fig.suptitle('Electric field and output power over frequency', y=0.93)
    fig.tight_layout()
    fig.savefig(f"output/opower.png",dpi=600)
    plt.show()

