import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import scienceplots


def setup_plot_style():
    """Configure matplotlib with IEEE publication style."""
    plt.style.use(['science', 'ieee'])
    plt.rcParams.update({'figure.dpi': '100'})


def create_ieee_plot_dual_yaxis(
    data_source,
    x_column,
    y1_columns,
    y2_columns,
    x_label='X axis',
    y1_label='Y1 axis',
    y2_label='Y2 axis',
    title='Plot',
    output_path='output/plot_dual.png',
    figsize=(4, 3),
    y1_legend_labels=None,
    y2_legend_labels=None,
    x_limits=None,
    y1_limits=None,
    y2_limits=None,
    show_grid=True,
    skiprows=0,
    y1_color='C0',
    y2_color='C1'
):
    """
    Create an IEEE-style plot with dual y-axes from CSV data.

    Parameters
    ----------
    data_source : str or dict
        Path to CSV file or dictionary with data arrays
    x_column : str or int
        Column name or index for x-axis
    y1_columns : str, int, or list
        Column(s) for left y-axis
    y2_columns : str, int, or list
        Column(s) for right y-axis
    x_label : str, optional
        Label for x-axis
    y1_label : str, optional
        Label for left y-axis
    y2_label : str, optional
        Label for right y-axis
    title : str, optional
        Plot title
    output_path : str, optional
        Path to save the figure
    figsize : tuple, optional
        Figure size (width, height) in inches
    y1_legend_labels : list of str, optional
        Custom labels for left y-axis series
    y2_legend_labels : list of str, optional
        Custom labels for right y-axis series
    x_limits : tuple, optional
        Tuple of (min, max) for x-axis limits
    y1_limits : tuple, optional
        Tuple of (min, max) for left y-axis limits
    y2_limits : tuple, optional
        Tuple of (min, max) for right y-axis limits
    show_grid : bool, optional
        Whether to show grid lines
    skiprows : int, optional
        Number of rows to skip at the beginning
    y1_color : str, optional
        Color for left y-axis (default: 'C0' - blue)
    y2_color : str, optional
        Color for right y-axis (default: 'C1' - orange)

    Returns
    -------
    fig, ax1, ax2 : matplotlib figure and axes objects

    Examples
    --------
    # Plot voltage on left axis, current on right axis
    create_ieee_plot_dual_yaxis(
        data_source='data.csv',
        x_column='time',
        y1_columns='voltage',
        y2_columns='current',
        x_label='Time (s)',
        y1_label='Voltage (V)',
        y2_label='Current (A)',
        title='Voltage and Current vs Time'
    )
    """
    setup_plot_style()

    # Load data from CSV or dictionary
    if isinstance(data_source, str):
        try:
            df = pd.read_csv(data_source, skiprows=skiprows)

            # Get x data
            if isinstance(x_column, str):
                x_data = pd.to_numeric(df[x_column], errors='coerce').values
            else:
                x_data = pd.to_numeric(df.iloc[:, x_column], errors='coerce').values

            # Process y1 columns
            if isinstance(y1_columns, (str, int)):
                y1_columns = [y1_columns]

            y1_data_list = []
            for col in y1_columns:
                if isinstance(col, str):
                    y1_data_list.append(pd.to_numeric(df[col], errors='coerce').values)
                else:
                    y1_data_list.append(pd.to_numeric(df.iloc[:, col], errors='coerce').values)

            if y1_legend_labels is None:
                y1_legend_labels = [str(col) for col in y1_columns]

            # Process y2 columns
            if isinstance(y2_columns, (str, int)):
                y2_columns = [y2_columns]

            y2_data_list = []
            for col in y2_columns:
                if isinstance(col, str):
                    y2_data_list.append(pd.to_numeric(df[col], errors='coerce').values)
                else:
                    y2_data_list.append(pd.to_numeric(df.iloc[:, col], errors='coerce').values)

            if y2_legend_labels is None:
                y2_legend_labels = [str(col) for col in y2_columns]

        except Exception as e:
            raise ValueError(f"Error reading CSV file: {e}")

    elif isinstance(data_source, dict):
        x_data = np.asarray(data_source[x_column], dtype=float)

        if isinstance(y1_columns, str):
            y1_columns = [y1_columns]
        if isinstance(y2_columns, str):
            y2_columns = [y2_columns]

        y1_data_list = [np.asarray(data_source[col], dtype=float) for col in y1_columns]
        y2_data_list = [np.asarray(data_source[col], dtype=float) for col in y2_columns]

        if y1_legend_labels is None:
            y1_legend_labels = y1_columns
        if y2_legend_labels is None:
            y2_legend_labels = y2_columns
    else:
        raise ValueError("data_source must be a CSV path or dictionary")

    # Remove NaN values
    valid_mask = ~np.isnan(x_data)
    x_data = x_data[valid_mask]
    y1_data_list = [y[valid_mask] for y in y1_data_list]
    y2_data_list = [y[valid_mask] for y in y2_data_list]

    # Create figure and primary axis
    fig, ax1 = plt.subplots(figsize=figsize)

    # Plot y1 data on left axis
    lines1 = []
    for i, (y_data, label) in enumerate(zip(y1_data_list, y1_legend_labels)):
        color = y1_color if len(y1_data_list) == 1 else f'C{i}'
        line = ax1.plot(x_data, y_data, label=label, color=color)
        lines1.extend(line)

    ax1.set_xlabel(x_label)
    ax1.set_ylabel(y1_label, color=y1_color)
    ax1.tick_params(axis='y', labelcolor=y1_color)

    # Create secondary y-axis
    ax2 = ax1.twinx()

    # Plot y2 data on right axis
    lines2 = []
    for i, (y_data, label) in enumerate(zip(y2_data_list, y2_legend_labels)):
        color = y2_color if len(y2_data_list) == 1 else f'C{i+len(y1_data_list)}'
        line = ax2.plot(x_data, y_data, label=label, color=color, linestyle='--')
        lines2.extend(line)

    ax2.set_ylabel(y2_label, color=y2_color)
    ax2.tick_params(axis='y', labelcolor=y2_color)

    # Set title
    ax1.set_title(title)

    # Set axis limits
    if x_limits is not None:
        ax1.set_xlim(x_limits)
    else:
        ax1.set_xlim(np.min(x_data), np.max(x_data))

    if y1_limits is not None:
        ax1.set_ylim(y1_limits)

    if y2_limits is not None:
        ax2.set_ylim(y2_limits)

    # Use scientific notation
    ax1.ticklabel_format(axis='y', style='scientific', scilimits=(0, 0))
    ax2.ticklabel_format(axis='y', style='scientific', scilimits=(0, 0))

    # Configure grid
    if show_grid:
        ax1.grid(which='major', linestyle='-', alpha=0.7)
        ax1.grid(which='minor', linestyle='--', alpha=0.5)
        ax1.minorticks_on()

    # Combine legends
    all_lines = lines1 + lines2
    all_labels = [line.get_label() for line in all_lines]
    ax1.legend(all_lines, all_labels, loc='best', frameon=True)

    # Tight layout
    fig.tight_layout()

    # Save figure
    fig.savefig(output_path, dpi=600, bbox_inches='tight')

    return fig, ax1, ax2


def create_ieee_plot_dual_yaxis_multifile(
    data_sources,
    x_columns,
    y1_columns,
    y2_columns,
    x_label='X axis',
    y1_label='Y1 axis',
    y2_label='Y2 axis',
    title='Plot',
    output_path='output/plot_dual.png',
    figsize=(4, 3),
    y1_legend_labels=None,
    y2_legend_labels=None,
    x_limits=None,
    y1_limits=None,
    y2_limits=None,
    show_grid=True,
    skiprows=None,
    y1_color='C0',
    y2_color='C1'
):
    """
    Create an IEEE-style plot with dual y-axes from multiple CSV files.

    Parameters
    ----------
    data_sources : list of str or str
        List of paths to CSV files (or single path)
    x_columns : int, str, or list
        Column for x-axis (shared across files or per-file)
    y1_columns : list
        Columns for left y-axis. Format: [(file_idx, col), ...]
        or simple list if one file
    y2_columns : list
        Columns for right y-axis. Format: [(file_idx, col), ...]
        or simple list if one file
    skiprows : int or list of int, optional
        Number of rows to skip per file

    Other parameters same as create_ieee_plot_dual_yaxis

    Returns
    -------
    fig, ax1, ax2 : matplotlib figure and axes objects

    Examples
    --------
    # Plot from single file
    create_ieee_plot_dual_yaxis_multifile(
        data_sources='data.csv',
        x_columns=0,
        y1_columns=[1, 2],  # Columns 1,2 on left axis
        y2_columns=[3],     # Column 3 on right axis
        y1_label='Power (W)',
        y2_label='Efficiency (%)'
    )

    # Plot from multiple files
    create_ieee_plot_dual_yaxis_multifile(
        data_sources=['file1.csv', 'file2.csv'],
        x_columns=0,
        y1_columns=[(0, 1), (1, 2)],  # file1-col1, file2-col2 on left
        y2_columns=[(0, 3)],           # file1-col3 on right
        y1_legend_labels=['F1', 'F2'],
        y2_legend_labels=['Efficiency']
    )
    """
    setup_plot_style()

    # Normalize inputs
    if not isinstance(data_sources, list):
        data_sources = [data_sources]

    if isinstance(x_columns, (int, str)):
        x_columns = [x_columns] * len(data_sources)

    if skiprows is None:
        skiprows = [0] * len(data_sources)
    elif isinstance(skiprows, int):
        skiprows = [skiprows] * len(data_sources)

    # Load all data files
    dfs = []
    for file_path, skip in zip(data_sources, skiprows):
        try:
            df = pd.read_csv(file_path, skiprows=skip)
            dfs.append(df)
        except Exception as e:
            raise ValueError(f"Error reading file {file_path}: {e}")

    # Helper function to extract data
    def get_data(file_idx, col):
        df = dfs[file_idx]
        if isinstance(col, str):
            return pd.to_numeric(df[col], errors='coerce').values
        else:
            return pd.to_numeric(df.iloc[:, col], errors='coerce').values

    # Process columns format
    # If simple list, assume single file (file_idx=0)
    if y1_columns and not isinstance(y1_columns[0], tuple):
        y1_columns = [(0, col) for col in y1_columns]
    if y2_columns and not isinstance(y2_columns[0], tuple):
        y2_columns = [(0, col) for col in y2_columns]

    # Get x data (assuming same x for all - use first file's x column)
    x_data = get_data(0, x_columns[0])
    valid_mask = ~np.isnan(x_data)
    x_data = x_data[valid_mask]

    # Collect y1 data
    y1_data_list = []
    for file_idx, col in y1_columns:
        y_data = get_data(file_idx, col)[valid_mask]
        y1_data_list.append(y_data)

    # Collect y2 data
    y2_data_list = []
    for file_idx, col in y2_columns:
        y_data = get_data(file_idx, col)[valid_mask]
        y2_data_list.append(y_data)

    # Auto-generate labels if not provided
    if y1_legend_labels is None:
        y1_legend_labels = [f'Y1-{i+1}' for i in range(len(y1_data_list))]
    if y2_legend_labels is None:
        y2_legend_labels = [f'Y2-{i+1}' for i in range(len(y2_data_list))]

    # Create figure and axes
    fig, ax1 = plt.subplots(figsize=figsize)

    # Plot y1 data
    lines1 = []
    for i, (y_data, label) in enumerate(zip(y1_data_list, y1_legend_labels)):
        color = y1_color if len(y1_data_list) == 1 else f'C{i}'
        line = ax1.plot(x_data, y_data, label=label, color=color)
        lines1.extend(line)

    ax1.set_xlabel(x_label)
    ax1.set_ylabel(y1_label, color=y1_color)
    ax1.tick_params(axis='y', labelcolor=y1_color)

    # Create secondary axis
    ax2 = ax1.twinx()

    # Plot y2 data
    lines2 = []
    for i, (y_data, label) in enumerate(zip(y2_data_list, y2_legend_labels)):
        color = y2_color if len(y2_data_list) == 1 else f'C{i+len(y1_data_list)}'
        line = ax2.plot(x_data, y_data, label=label, color=color, linestyle='--')
        lines2.extend(line)

    ax2.set_ylabel(y2_label, color=y2_color)
    ax2.tick_params(axis='y', labelcolor=y2_color)

    ax1.set_title(title)

    # Set limits
    if x_limits is not None:
        ax1.set_xlim(x_limits)
    if y1_limits is not None:
        ax1.set_ylim(y1_limits)
    if y2_limits is not None:
        ax2.set_ylim(y2_limits)

    # Scientific notation
    ax1.ticklabel_format(axis='y', style='scientific', scilimits=(0, 0))
    ax2.ticklabel_format(axis='y', style='scientific', scilimits=(0, 0))

    # Grid
    if show_grid:
        ax1.grid(which='major', linestyle='-', alpha=0.7)
        ax1.grid(which='minor', linestyle='--', alpha=0.5)
        ax1.minorticks_on()

    # Combined legend
    all_lines = lines1 + lines2
    all_labels = [line.get_label() for line in all_lines]
    ax1.legend(all_lines, all_labels, loc='best', frameon=True)

    fig.tight_layout()
    fig.savefig(output_path, dpi=600, bbox_inches='tight')

    return fig, ax1, ax2


# Example usage
if __name__ == '__main__':
    create_ieee_plot_dual_yaxis(
        data_source='data/monopole/impedance.csv',
        x_column=0,
        y1_columns=1,  # Plot column 1
        y2_columns=2,        # Plot column 3 on right axis
        x_label='Frequency (GHz)',
        y1_label=r'Magnitude ($\Omega$)',
        y2_label='Phase (deg)',
        title='Impedance of the monopole antenna',
        y1_legend_labels=['Magnitude'],
        y2_legend_labels=['Phase'],
        output_path='output/monopole_impedance.png',
        y1_limits=(0, 0.2e5)
    )

    # Example 2: Multiple files with dual y-axis
    # create_ieee_plot_dual_yaxis_multifile(
    #     data_sources=['file1.csv', 'file2.csv'],
    #     x_columns=0,
    #     y1_columns=[(0, 1), (1, 1)],  # file1-col1, file2-col1 on left
    #     y2_columns=[(0, 2)],           # file1-col2 on right
    #     x_label='Time (s)',
    #     y1_label='Voltage (V)',
    #     y2_label='Current (A)',
    #     title='Multi-file Dual Axis Plot',
    #     y1_legend_labels=['V1', 'V2'],
    #     y2_legend_labels=['Current'],
    #     output_path='output/dual_axis_multifile.png'
    # )

    #create_ieee_plot(
    #    data_source="data/monopole/current-dist-3GHz.csv",
    #    x_column=3,
    #    y_columns=4,  
    #    x_label='Position on antenna [mm]',
    ##    y_label='Current (A)',
    #    title=r'Current distribution along monopole antenna at 3$\,$GHz',
    #    legend_labels='1MHz',
    #    output_path='output/monopole-current-dist-3GHz.png',
    #    x_limits=(0, 5),
    #    y_limits=(0, 3.8e-2)
    #)
    #create_ieee_plot_multifile(
    #    data_sources=['data/monopole/equ-moment-power.csv', 'data/monopole/output_power.csv'],
    #    x_columns=0,  # Use column 0 as x-axis for both files
    #    y_columns=[1, 1],  # Plot column 1 from file1, column 1 from file2
    #    x_label='Frequency (GHz)',
    #    y_label='Power (W)',
    #    title='Comparison $P_\mathrm{out}$ monopole antenna and $\mathbf{m}_e$, $\mathbf{m}_m$',
    #    legend_labels=['Equivalent dipole moments', 'Monopole antenna'],
    #    output_path='output/comparison-monopole.png',
    #    x_limits=(0.001, 3)
    #)
    #create_ieee_plot(
    ##    data_source=['data/monopole/equ-moment-power.csv', 'data/monopole/magnitude.csv'],
    #    x_column=0,
    #    y_columns=[1, 1],
    #    x_label='Frequency (GHz)',
    ##    y_label='Power (W)',
    #    title='Comparison $P_\mathrm{out}$ monopole antenna and $\mathbf{m}_e$, $\mathbf{m}_m$',
    #    legend_labels=['a', 'b'],
    #    output_path='output/equivalent-dipole-moments.png'
    #)
    
    # Example 2: Multiple files - simple case
    # Plot column 1 from file1.csv and column 2 from file2.csv
    #create_ieee_plot_multifile(
        #data_sources=['data/file1.csv', 'data/file2.csv'],
        #x_columns=0,  # Use column 0 as x-axis for both files
        #y_columns=[1, 2],  # Plot column 1 from file1, column 2 from file2
        #x_label='Frequency (GHz)',
        #y_label='Power (W)',
        #title='Multi-file comparison',
        #legend_labels=['Dataset 1', 'Dataset 2'],
        #output_path='output/multifile_simple.png'
    #)
    
    # Example 3: Multiple files - complex case
    # Plot multiple columns from each file
    #create_ieee_plot_multifile(
        #data_sources=['data/file1.csv', 'data/file2.csv'],
        #x_columns=[0, 0],  # Column 0 for x in both files
        #y_columns=[[1, 2], [1, 3]],  # Cols 1,2 from file1; cols 1,3 from file2
        #x_label='Time (s)',
        #y_label='Amplitude',
        #title='Comprehensive comparison',
        ##legend_labels=['F1-V1', 'F1-V2', 'F2-V1', 'F2-V3'],
        #output_path='output/multifile_complex.png'
    #)
