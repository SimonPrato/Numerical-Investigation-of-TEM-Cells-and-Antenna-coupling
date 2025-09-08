import numpy as np
import matplotlib.pyplot as plt

# Deine drei Messpunkte
x = np.array([100, 325, 550, 1000])  # x-Werte
y = np.array([0.0335, 0.075, 0.124, 0.204])  # y-Werte

# Anpassung eines Polynoms 2. Grades
coefficients = np.polyfit(x, y, 2)

# Erstelle die Polynomfunktion
polynomial = np.poly1d(coefficients)

# Werte für die Extrapolation berechnen
x_fit = np.linspace(0, 1000, 200)  # Bereich von 0 bis 1000
y_fit = polynomial(x_fit)

# Ergebnisse anzeigen
print("Koeffizienten des Polynoms:", coefficients)

# Plot der Messpunkte und der extrapolierten Funktion
plt.scatter(x, y, color='red', label='Messpunkte')
plt.plot(x_fit, y_fit, label='Extrapolierte Funktion (2. Ordnung)', color='blue')
plt.plot(x_fit, np.sqrt(y_fit), label='sqrt', color='green')
plt.xlabel('x')
plt.ylabel('y')
plt.legend()
plt.title('Extrapolation eines Polynoms 2. Grades')
plt.grid(True)
plt.show()