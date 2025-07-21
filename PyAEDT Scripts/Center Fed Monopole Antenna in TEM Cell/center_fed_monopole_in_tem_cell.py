from ansys.aedt.core.hfss import Hfss
import os


"""
===============================================================================
 Script Name   : f_antenna_in_tem_cell.py
 Author        : Simon Prato
 Created       : 2025-07-05
 Last Modified : 2025-07-07
 Version       : 1.0
 Description   : This script inserts an inverted F antenna into a TEM cell in HFSS. 
                 It uses the model of the TEM cell provided by Dominik Kreindl and
                 of the inverted F-antenna by Texas Instruments.
 Usage         : python f_antenna_in_tem_cell.py
===============================================================================

 Requirements  : Ansys Electronics Desktop must have PyAEDT 0.17.5 installed. 
                 PyAEDT documentation: https://aedt.docs.pyansys.com/
 Notes         : This script was written for a master thesis.
===============================================================================
"""


#  TODO: Add a start of simulation.
#  TODO: Save all, including simulation results
#  TODO: Enable the option of rotating the f_antenna in the TEM cell as desired

if __name__ == '__main__':
    script_dir = os.path.abspath(os.path.dirname(os.path.dirname(os.path.dirname(__file__))))
    tem_cell_project_name = f"{script_dir}/TEM Cell/Ansys Simulation Files/TEM_Cell_Project.aedt"
    file_path_f_antenna = (f"{script_dir}/Inverted F Antenna/"
                           f"Ansys Simulation Files/inverted_f_antenna_short_signal_conductor.a3dcomp")

    design_name = "TEM Cell with F Antenna" # Name of the HFSS Design which will be created

    hfss = Hfss()
    hfss.load_project(file_name=tem_cell_project_name)
    hfss.duplicate_design(name=design_name, save_after_duplicate=True)
    # Duplicate the original TEM cell design. This includes boundaries and the solution setup.
    modeler = hfss.modeler
    f_antenna = modeler.insert_3d_component(f"{script_dir}\Inverted F Antenna\Ansys Simulation Files"
                                            r"\inverted_f_antenna_short_signal_conductor.a3dcomp")
    # Inserts the model of the inverted F-antenna
    # Next, check if the antenna has been loaded correctly. If yes, then position it in the TEM cell.
    if f_antenna:
        f_antenna.rotate(axis="X", angle=270.0, units="deg")
        f_antenna.move([0, 0, 11.886672])
        hfss.save_project()
    else:
        print("ERROR: Antenna model not found.")

    hfss.release_desktop(close_projects=False, close_desktop=False)
