# Inverted F-Antenna
The inverted F-antenna is often used in mobile phones or other small electronic devices due to its compact size. There are some models in this folder which are used to investigate its performance in a TEM cell.

## Inverted-F Antenna by Texas Instruments
![image](https://github.com/user-attachments/assets/fa152cc2-7715-4037-8684-aa634bd15ed0)

Texas Instruments provides models for an inverted F-antenna on a PCB, which is well documenten in an [Application Report](https://www.ti.com/lit/an/swru120d/swru120d.pdf?ts=1751880090337). There are also Gerber and DXF files, which can be used to reconstruct this antenna as accurately as possible. The material of the PCB shall be FR4, and it shall only be 1 mm thick. An inverted F-antenna model in Ansys HFSS is quickly created by importing the DXF file and adding the FR4 material. Additionally, a lumped port is added to the feedpoint for excitation.

![image](https://github.com/user-attachments/assets/9169d4d8-a8c1-4f3b-923c-573b9318a482)

*Inverted F-antenna model saved as inverted_f_antenna.a3dcomp in the Ansys Simulation Files*

Another model is created with a shorter signal path at the feedpoint. This is done so this model can be inserter into the TEM cell without overlapping with the TEM cell.

![image](https://github.com/user-attachments/assets/3321f31b-2500-414a-9406-d19a1b0c6d43)

*Comparison between the antenna models' feedpoints*

The gerber and DXF file of the antenna by TI can be found in the *Gerber and DXF Files folder*. The work is based on the TI application report, which is here.
