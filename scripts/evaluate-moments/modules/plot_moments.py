import numpy as np
import matplotlib.pyplot as plt
import scienceplots  # pip install SciencePlots


plt.style.use(['science', 'ieee'])


def plot_phase_shift(phase_data, freqs, antenna_name):
    """
    Plot phase shifts of two waveports versus frequency.
    Adds annotations showing phase differences at two sample points.
    """
    fig, ax_phase = plt.subplots(figsize=(3.9, 2.64))

    freq_ghz = freqs / 1e9
    phase_port1 = phase_data[1]
    phase_port2 = phase_data[2]

    # Helper function to annotate delta between phases at an index
    def annotate_delta(index, text_offset=0.0):
        y1, y2 = phase_port1[index], phase_port2[index]
        delta = y1 - y2
        ax_phase.plot(freq_ghz[index], y1, 'k.', markersize=5)
        ax_phase.plot(freq_ghz[index], y2, 'k.', markersize=5)
        ax_phase.annotate(
            '', xy=(freq_ghz[index], y2), xytext=(freq_ghz[index], y1),
            arrowprops=dict(arrowstyle='<->', color='black', lw=1)
        )
        ax_phase.text(
            freq_ghz[index] + text_offset, (y1 + y2) / 2,
            rf'$\Delta$ = {delta:.2f} rad', fontsize=10, color='black', ha='left'
        )

    # Main line plots
    ax_phase.plot(freq_ghz, phase_port1, 'k-', label='Waveport 1')
    ax_phase.plot(freq_ghz, phase_port2, 'k--', label='Waveport 2')

    # Annotate two points
    annotate_delta(index=50)
    annotate_delta(index=350, text_offset=-0.3)

    ax_phase.set_xlabel('Frequency [GHz]')
    ax_phase.set_ylabel('Phase Shift [rad]')
    ax_phase.set_xlim(freq_ghz.min(), freq_ghz.max())
    fig.suptitle(f'Phase shifts of {antenna_name} antenna over frequency')

    # Grid and limits
    ax_phase.minorticks_on()
    ax_phase.grid(which='major', linestyle='-', linewidth=0.5, color='#BBBBBB')
    ax_phase.grid(which='minor', linestyle=':', linewidth=0.4, color='#DDDDDD')

    # Adjust Y limits to encompass both traces
    ymin = min(phase_port1.min(), phase_port2.min())
    ymax = max(phase_port1.max(), phase_port2.max())
    ax_phase.set_ylim(ymin, ymax)

    # Hide secondary Y-axis contents
    ax_dummy = ax_phase.twinx()
    ax_dummy.set_ylabel(".")
    ax_dummy.tick_params(axis='y', colors='white')
    ax_dummy.yaxis.label.set_color('white')

    # Legend
    legend = fig.legend(loc='lower left', bbox_to_anchor=(0.15, 0.17), frameon=True)
    legend.get_frame().set_facecolor('white')

    fig.tight_layout()
    fig.savefig(f"output/{antenna_name}-phase.png", dpi=600)
    plt.show()


def plot_dipole_moments(electric_moment, magnetic_moment, freqs, antenna_name):
    """
    Plot electric and magnetic dipole moments versus frequency.
    Electric moment is normalized by 377 ohms.
    """
    fig, ax_elec = plt.subplots(figsize=(3.9, 2.64))
    freq_ghz = freqs / 1e9
    normed_m_e = np.abs(electric_moment) * 377
    abs_m_m = np.abs(magnetic_moment)

    # Electric dipole moment
    ax_elec.set_xlabel('Frequency [GHz]')
    ax_elec.set_ylabel(r'Electric Dipole Moment $\left|m_e\right| \cdot 377\ \Omega$ [V/m]')
    ax_elec.plot(freq_ghz, normed_m_e, 'r-', label=r'$\left|m_e\right| \cdot 377\Omega$')
    ax_elec.minorticks_on()
    ax_elec.grid(which='major', linestyle='-', linewidth=0.5, color='#BBBBBB')
    ax_elec.grid(which='minor', linestyle=':', linewidth=0.4, color='#DDDDDD')
    ax_elec.ticklabel_format(axis='y', style='sci', scilimits=(0, 0))

    # Magnetic dipole moment
    ax_mag = ax_elec.twinx()
    ax_mag.set_ylabel(r'Magnetic Dipole Moment $\left|m_m\right|$ [V/m]')
    ax_mag.plot(freq_ghz, abs_m_m, 'b--', label=r'$\left|m_m\right|$')
    ax_mag.ticklabel_format(axis='y', style='sci', scilimits=(0, 0))

    # Match Y-limits
    max_val = max(normed_m_e.max(), abs_m_m.max())
    ax_elec.set_ylim(0, max_val)
    ax_mag.set_ylim(0, max_val)
    ax_elec.set_xlim(freq_ghz.min(), freq_ghz.max())

    fig.suptitle(f'Dipole moments of {antenna_name} antenna in TEM cell over frequency', y=0.93)

    # Legend
    legend = fig.legend(loc='upper left', bbox_to_anchor=(0.15, 0.82), frameon=True)
    legend.get_frame().set_facecolor('white')

    fig.tight_layout()
    fig.savefig(f"output/{antenna_name}-moments.png", dpi=600)
    plt.show()


def plot_output_power_and_field(freqs, output_power, e_field):
    """
    Plot electric field magnitude and output power over frequency using twin y-axes.
    """
    fig, ax_field = plt.subplots(figsize=(3.9, 2.64))
    freq_ghz = freqs / 1e9

    # Electric field
    ax_field.set_xlabel('Frequency [GHz]')
    ax_field.set_ylabel(r'$|E_y|$ [V/m]')
    ax_field.plot(freq_ghz, e_field, 'k-', label='$E_y$')
    ax_field.set_xlim(freq_ghz.min(), freq_ghz.max())
    ax_field.set_ylim(0, e_field.max())
    ax_field.minorticks_on()
    ax_field.grid(which='major', linestyle='-', linewidth=0.5, color='#BBBBBB')
    ax_field.grid(which='minor', linestyle=':', linewidth=0.4, color='#DDDDDD')
    ax_field.ticklabel_format(axis='y', style='sci', scilimits=(0, 0))

    # Output power
    ax_power = ax_field.twinx()
    ax_power.set_ylabel('Output power [W]')
    ax_power.plot(freq_ghz, output_power, 'k--', label='Output power')
    ax_power.ticklabel_format(axis='y', style='sci', scilimits=(0, 0))

    # Legend
    legend = fig.legend(loc='upper left', bbox_to_anchor=(0.15, 0.82), frameon=True)
    legend.get_frame().set_facecolor('white')

    fig.suptitle('Electric field and output power over frequency', y=0.93)
    fig.tight_layout()
    fig.savefig("output/{antenna_name}-output-power.png", dpi=600)
    plt.show()

