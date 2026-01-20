# Numerical Investigation of TEM Cells and Antenna Coupling

## Overview

This repository contains a thesis project investigating the electromagnetic coupling between magneto-electric short antennas and TEM (Transverse Electromagnetic) cells. The research focuses on deriving equivalent electric and magnetic dipole moments as effective representations of radiation patterns for electrically short conducting structures.

### Research Objectives

- Analyze coupling mechanisms between antennas and TEM cells
- Investigate antenna characteristics including position, rotation, and frequency behavior
- Develop theoretical framework for understanding EMC compliance testing
- Provide insights for product improvement in electromagnetic compatibility testing

## Project Structure

```
.
├── Documentation.pdf          # Complete thesis documentation
├── archive/                   # Deprecated files kept for reference
├── content/                   # LaTeX content organized by topic
│   ├── 00_introduction/
│   ├── 10_dipoles/
│   ├── 20_guided_waves/
│   ├── 30_numerical_investigations/
│   ├── 40_conclusion/
│   └── img/
├── latex/                     # LaTeX compilation files
│   ├── Documentation.tex      # Main LaTeX document
│   └── content/              # LaTeX source content
├── scripts/                   # Data processing scripts
│   ├── eqc-ind-antenna/      # Equivalent circuit induced antenna analysis
│   ├── evaluate-moments/      # Electric and magnetic moment derivation
│   └── generic-plotting/      # Visualization tools
└── simulations/               # HFSS simulation files
    ├── hfss-projects/        # Ansys HFSS project files
    └── results/              # Simulation output data
```

## Directory Details

### `/content` & `/latex`
Contains the LaTeX source files for the thesis documentation, organized by chapter:
- **00_introduction**: Project overview and motivation
- **10_dipoles**: Electric and magnetic dipole theory
- **20_guided_waves**: TEM cell and guided wave propagation
- **30_numerical_investigations**: Simulation results and analysis
- **40_conclusion**: Summary and future work

### `/scripts`
Python scripts for post-processing simulation data and deriving antenna parameters.

**Requirements:**
- Python 3.13
- scipy
- numpy
- matplotlib
- pyvista

**Key functionalities:**
- Extraction of S-parameters from HFSS simulations
- Derivation of electric and magnetic coupling coefficients
- Visualization and plotting of results

### `/simulations`
Ansys HFSS simulation files and results:
- **hfss-projects/**: Source simulation project files
- **results/**: Exported simulation data for post-processing

### `/archive`
Historical files and deprecated versions maintained for reference.

## Getting Started

### Prerequisites

1. **For Simulations:**
   - Ansys HFSS (Electromagnetic simulation software)

3. **For Documentation:**
   - LaTeX distribution (e.g., TeX Live, MiKTeX)
   - BibTeX for bibliography management

### Building the Documentation

```bash
cd latex
pdflatex Documentation.tex
bibtex Documentation
pdflatex Documentation.tex
pdflatex Documentation.tex
```

The compiled PDF will be `latex/Documentation.pdf`.

### Running Scripts

Each script directory contains its own README with specific usage instructions. Generally:

```bash
cd scripts/<script-directory>
python -m venv .venv
source .venv/bin/activate
python main.py  
```

## Project Status

**Institution:** Technical University of Graz  
**Start Date:** July 2024  
**Status:** In Progress

This is an ongoing research project. The repository is actively maintained and updated with new findings and developments.

## Key Concepts

- **TEM Cells**: Test chambers for electromagnetic compatibility testing
- **Dipole Moments**: Mathematical representations of antenna radiation patterns
- **Magneto-Electric Antennas**: Antennas exhibiting both electric and magnetic field coupling
- **EMC Compliance**: Electromagnetic compatibility standards for electronic products

## Contributing

This is an academic thesis project. For questions or collaboration inquiries, please contact the repository owner.

## License

Academic research project. Please contact the author for usage permissions.

## Contact

For more information about this research, please refer to the thesis documentation or contact through the repository.
