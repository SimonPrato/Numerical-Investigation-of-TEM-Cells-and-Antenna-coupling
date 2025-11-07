from matplotlib import pyplot as plt
import numpy as np
import scienceplots  # You need to install this package first via: pip install SciencePlots


def plot_phase_shift(columns_phase_shift, frequencies, antenna):
    # Plot von columns_phase_shift[1] und columns_phase_shift[0] gegen Frequenz
    # plt.rcParams.update({'font.size': 18})  # Schriftgröße auf 18 setzen
    # Use the 'science' style together with 'ieee' for IEEE formatting
    plt.style.use(['science', 'ieee'])
    fig, ax1 = plt.subplots(figsize=(3.9, 2.64))

    phase1 =  columns_phase_shift[1]
    phase2 = columns_phase_shift[2]-np.pi

    marker1_y = phase1[50]
    marker2_y =phase2[50]
    delta = - marker2_y + marker1_y
    ax1.plot(frequencies / 1e9, phase1, linestyle='-', color='black', label='Waveport 1')
    ax1.plot(frequencies / 1e9, phase2, linestyle='--', color='black', label='Waveport 2')
    ax1.plot(columns_phase_shift[0][50], marker1_y, linestyle='-', color='black', marker='.', markersize=5)
    ax1.plot(columns_phase_shift[0][50], marker2_y, linestyle='-', color='black', marker='.', markersize=5)
    ax1.text(columns_phase_shift[0][54], (marker1_y + marker2_y) / 2, f'$\Delta$ =  {delta:.2f} rad',
             fontsize=10, color='black', ha='left')
    ax1.annotate('', xy=(columns_phase_shift[0][50], marker2_y),
                 xytext=(columns_phase_shift[0][50], marker1_y),
                 arrowprops=dict(arrowstyle='<->', color='black', lw=1))

    marker1_y = phase1[350]
    marker2_y = phase2[350]
    delta = -marker2_y + marker1_y
    ax1.plot(columns_phase_shift[0][350], marker1_y, linestyle='-', color='black', marker='.', markersize=5)
    ax1.plot(columns_phase_shift[0][350], marker2_y, linestyle='-', color='black', marker='.', markersize=5)
    ax1.text(columns_phase_shift[0][275]-0.3, (marker1_y + marker2_y) / 2, f'$\Delta$ =  {delta:.2f} rad',
             fontsize=10, color='black', ha='left')
    ax1.annotate('', xy=(columns_phase_shift[0][350], marker2_y),
                 xytext=(columns_phase_shift[0][350], marker1_y),
                 arrowprops=dict(arrowstyle='<->', color='black', lw=1))
    ax1.set_xlabel('Frequency [GHz]')
    ax1.set_ylabel('Phase Shift [rad]')
    fig.suptitle(f'Phase Shifts of {antenna} antenna over frequency')
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
    fig.savefig(f"plot_outputs/{antenna}_phase.png",dpi=600)
    plt.show()


def plot_moments(m_e, m_m, frequencies, antenna):

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

    # Zweite y-Achse für |m_m|
    ax2 = ax1.twinx()
    color = 'tab:blue'
    ax2.set_ylabel(r'Magnetic Dipole Moment $\left|m_m\right|$ [V/m]')
    ax2.plot(frequencies / 1e9, np.abs(m_m), label=r'$\left|m_m\right|$', linestyle="--")
    ax2.tick_params(axis='y')

    # Titel und Anzeige
    fig.suptitle(f'Dipole moments of {antenna} antenna over frequency')
    fig.tight_layout()
    if np.max(normed_m_e) > np.max(np.abs(m_m)):
        ax1.set_ylim(0, np.max(normed_m_e))
        ax2.set_ylim(0, np.max(normed_m_e))
    else:
        ax1.set_ylim(0, np.max(np.abs(m_m)))
        ax2.set_ylim(0, np.max(np.abs(m_m)))

    ax1.set_xlim(np.min(frequencies/1e9), np.max(frequencies/1e9))
    ax2.set_xlim(np.min(frequencies/1e9), np.max(frequencies/1e9))

    legend = fig.legend(loc='upper left', bbox_to_anchor=(0.1, 0.87), frameon=True)
    legend.get_frame().set_facecolor('white')
    fig.savefig(f"plot_outputs/{antenna}.png",dpi=600)
    plt.show()



def plot_output_power_e_field(frequencies, output_power, e_field_approx):

    # Plot mit zwei y-Achsen
    plt.rcParams.update({'font.size': 18})  # Schriftgröße auf 18 setzen
    fig, ax1 = plt.subplots(figsize=(3.25, 2.2))

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