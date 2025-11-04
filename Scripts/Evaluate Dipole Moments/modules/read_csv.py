import pandas as pd
import numpy as np

def read_csv(antenna_type):
    # CSV-Datei lesen
    csv_file = f'data/{antenna_type}/Phase.csv'
    data = pd.read_csv(csv_file, header=None, dtype=float, skiprows=1)

    # Spalten in separate NumPy-Arrays extrahieren
    columns_phase_shift = [data[col].to_numpy()[1:] for col in data.columns]

    # CSV-Datei lesen
    csv_file = f'data/{antenna_type}/Magnitude.csv'
    data = pd.read_csv(csv_file, header=None, dtype=float, skiprows=1)

    # Spalten in separate NumPy-Arrays extrahieren
    columns_magnitude = [data[col].to_numpy()[1:] for col in data.columns]

    return columns_phase_shift, columns_magnitude
