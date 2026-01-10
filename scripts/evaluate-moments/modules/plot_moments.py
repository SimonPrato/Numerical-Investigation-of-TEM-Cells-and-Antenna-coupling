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
    fig.savefig(f"output/{antenna}_phase.png",dpi=600)
    plt.show()


def plot_moments(m_e, m_m, frequencies, antenna):

    normed_m_e = np.abs(m_e) * 377
#    normed_m_e_2 = np.array([np.float64(5.565928296145832e-06), np.float64(2.2044278829443774e-05), np.float64(4.9414494335961764e-05), np.float64(8.763777897182369e-05), np.float64(0.00013665244722238794), np.float64(0.00019636720732281676), np.float64(0.00026665429165632584), np.float64(0.0003473418095540408), np.float64(0.0004382083018294275), np.float64(0.0005389777094603133), np.float64(0.0006493176020858951), np.float64(0.0007688401856584075), np.float64(0.000897106909825275), np.float64(0.0010336360663951052), np.float64(0.0011779123824453982), np.float64(0.001329402422494611), np.float64(0.0014875672066871689), np.float64(0.001651879924009243), np.float64(0.00182183835415607), np.float64(0.001996983609491901), np.float64(0.0021769078137836807), np.float64(0.002361265230621104), np.float64(0.0025497771555854647), np.float64(0.0027422353892703234), np.float64(0.002938497637910124), np.float64(0.003138484491332841), np.float64(0.0033421706629996276), np.float64(0.003549572571086651), np.float64(0.003760741339716897)])
#    m_m_2 = np.array([np.float64(0.0008461903223756516), np.float64(0.0016824825891453544), np.float64(0.0025152313000893567), np.float64(0.0033427252764445426), np.float64(0.00416331401902344), np.float64(0.004975425342627063), np.float64(0.005777580962697726), np.float64(0.006568409771087089), np.float64(0.007346658420980782), np.float64(0.008111199200098012), np.float64(0.008861035013669786), np.float64(0.009595301519071465), np.float64(0.010313266479033165), np.float64(0.01101432654266165), np.float64(0.011698001798979863), np.float64(0.0123639280051759), np.float64(0.013011847628903174), np.float64(0.013641599296186078), np.float64(0.01425310713063708), np.float64(0.014846369025997007), np.float64(0.01542144631073517), np.float64(0.015978453410210217), np.float64(0.016517548999618402), np.float64(0.017038928246831713), np.float64(0.017542817332242368), np.float64(0.01802946889400742), np.float64(0.018499159558263117), np.float64(0.01895218934226021), np.float64(0.01938888129912529)])

#    freq_2 =np.array( [np.float64(104413793.103448), np.float64(207827586.20689702), np.float64(311241379.310345), np.float64(414655172.413793), np.float64(518068965.517241), np.float64(621482758.62069), np.float64(724896551.724138), np.float64(828310344.827586), np.float64(931724137.9310341), np.float64(1035137931.03448), np.float64(1138551724.13793), np.float64(1241965517.24138), np.float64(1345379310.34483), np.float64(1448793103.4482799), np.float64(1552206896.55172), np.float64(1655620689.65517), np.float64(1759034482.75862), np.float64(1862448275.8620698), np.float64(1965862068.96552), np.float64(2069275862.0689702), np.float64(2172689655.17241), np.float64(2276103448.27586), np.float64(2379517241.37931), np.float64(2482931034.48276), np.float64(2586344827.5862103), np.float64(2689758620.68966), np.float64(2793172413.7931), np.float64(2896586206.89655), np.float64(3000000000.0)])

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
    fig.suptitle(f'Dipole moments of {antenna} antenna in TEM cell over frequency', y=0.93)
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
    fig.savefig(f"output/{antenna}.png",dpi=600)
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

