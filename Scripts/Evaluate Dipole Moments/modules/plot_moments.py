from matplotlib import pyplot as plt
import numpy as np


def plot_phase_shift(columns_phase_shift, frequencies):
    # Plot von columns_phase_shift[1] und columns_phase_shift[0] gegen Frequenz
    plt.rcParams.update({'font.size': 18})  # Schriftgröße auf 18 setzen
    plt.figure(figsize=(12, 6))
    marker1_y = columns_phase_shift[1][50]
    marker2_y = columns_phase_shift[2][50]-np.pi
    delta = - marker2_y + marker1_y
    plt.plot(frequencies / 1e9, columns_phase_shift[1], linestyle='-', color='blue', label='Waveport 1')
    plt.plot(frequencies / 1e9, columns_phase_shift[2]-np.pi, linestyle='--', color='red', label='Waveport 2')
    plt.plot(columns_phase_shift[0][50], marker1_y, linestyle='-', color='black', marker='.', markersize=10)
    plt.plot(columns_phase_shift[0][50], marker2_y, linestyle='-', color='black', marker='.', markersize=10)
    plt.text(columns_phase_shift[0][54], (marker1_y + marker2_y) / 2, f'Δ =  {delta:.2f} rad',
             fontsize=18, color='black', ha='left')
    plt.annotate('', xy=(columns_phase_shift[0][50], marker2_y),
                 xytext=(columns_phase_shift[0][50], marker1_y),
                 arrowprops=dict(arrowstyle='<->', color='black', lw=1.5))

    marker1_y = columns_phase_shift[1][350]
    marker2_y = columns_phase_shift[2][350] - np.pi
    delta = -marker2_y + marker1_y
    plt.plot(columns_phase_shift[0][350], marker1_y, linestyle='-', color='black', marker='.', markersize=10)
    plt.plot(columns_phase_shift[0][350], marker2_y, linestyle='-', color='black', marker='.', markersize=10)
    plt.text(columns_phase_shift[0][275], (marker1_y + marker2_y) / 2, f'Δ =  {delta:.2f} rad',
             fontsize=18, color='black', ha='left')
    plt.annotate('', xy=(columns_phase_shift[0][350], marker2_y),
                 xytext=(columns_phase_shift[0][350], marker1_y),
                 arrowprops=dict(arrowstyle='<->', color='black', lw=1.5))
    plt.xlabel('Frequency [GHz]')
    plt.ylabel('Phase Shift')
    plt.title('Phase Shifts vs Frequency')
    plt.xlim(0.1, 1)
    plt.grid(True)
    plt.legend()
    plt.show()


def plot_moments(m_e, m_m, frequencies):

    normed_m_e = np.abs(m_e) * 377

    plt.rcParams.update({'font.size': 18})
    # Plot mit zwei y-Achsen
    fig, ax1 = plt.subplots(figsize=(12, 6))
    # Erste y-Achse für |m_ez| * 377
    color = 'tab:red'
    ax1.set_xlabel('Frequency (GHz)')
    ax1.set_ylabel('Electric Dipole Moment |$m_e$|$\cdot 377 \Omega$ in V/m', color=color)
    ax1.plot(frequencies / 1e9, normed_m_e, linestyle='-', color=color, label='|$m_e$|$\cdot 377\Omega$')
    ax1.tick_params(axis='y', labelcolor=color)
    ax1.grid(True)

    # Zweite y-Achse für |m_m|
    ax2 = ax1.twinx()
    color = 'tab:blue'
    ax2.set_ylabel('Magnetic Dipole Moment |$m_m$| in V/m', color=color)
    ax2.plot(frequencies / 1e9, np.abs(m_m), linestyle='-', color=color, label='|$m_m$|')
    ax2.tick_params(axis='y', labelcolor=color)

    # Titel und Anzeige
    fig.suptitle('Dipole moments over frequency')
    fig.tight_layout()
    if np.max(normed_m_e) > np.max(np.abs(m_m)):
        ax1.set_ylim(np.min(normed_m_e), np.max(normed_m_e))
        ax2.set_ylim(np.min(normed_m_e), np.max(normed_m_e))
    else:
        ax1.set_ylim(np.min(np.abs(m_m)), np.max(np.abs(m_m)))
        ax2.set_ylim(np.min(np.abs(m_m)), np.max(np.abs(m_m)))

    ax1.set_xlim(np.min(frequencies/1e9), np.max(frequencies/1e9))
    ax2.set_xlim(np.min(frequencies/1e9), np.max(frequencies/1e9))

    fig.legend(loc='upper left', bbox_to_anchor=(0.1, 0.87))
    plt.show()



def plot_output_power_e_field(frequencies, output_power, e_field_approx):

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