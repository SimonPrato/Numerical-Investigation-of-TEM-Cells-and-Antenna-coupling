import numpy as np
import matplotlib.pyplot as plt
import scienceplots  # You need to install this package first via: pip install SciencePlots



# Example data
x = np.linspace(0, 10, 100)
y1 = np.sin(x)
y2 = np.cos(x)
y3 = np.tan(x) * 0.1  # scaled for clarity

# Use the 'science' style together with 'ieee' for IEEE formatting
plt.style.use(['science', 'ieee'])

# Create the plot
fig, ax = plt.subplots(figsize=(4, 3))  # figure size fit for IEEE column width
plt.rcParams.update({'figure.dpi': '100'})

ax.plot(x, y1, label='sin(x)')
ax.plot(x, y2, label='cos(x)')
ax.plot(x, y3, label='0.1 * tan(x)')

# Labeling axes with math formatting
ax.set_xlabel('X axis (radians)')
ax.set_ylabel('Y axis')

# Add Plot Title
ax.set_title('Sine and cosine plot')

# Legend with font size suitable for IEEE papers
legend = ax.legend(frameon=True)
legend.get_frame().set_facecolor('white')

# Tight layout to avoid clipping
fig.tight_layout()

# Show a grid
ax.grid(which='major', linestyle='-')
ax.grid(which='minor', linestyle='--', alpha=0.5)
ax.minorticks_on()

# Set axis limits
ax.set_xlim(np.min(x), np.max(x))

# Save figure with high dpi for publication quality
fig.savefig('output/tem_cell_modes.png', dpi=600)

# Show plot (optional, remove for batch/script usage)
# plt.show()
