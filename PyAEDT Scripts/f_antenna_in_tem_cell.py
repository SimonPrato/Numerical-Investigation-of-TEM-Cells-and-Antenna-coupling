from ansys.aedt.core.hfss import Hfss

"""
This script inserts an inverted F antenna into a TEM cell in HFSS. 
It uses the model of the TEM cell in the project "TEM_Cell_Project.aedt"
provided by Dominik Kreindl.
"""

#  TODO: Add a start of simulation.
#  TODO: Save all, including simulation results
#  TODO: Enable the option of rotating the f_antenna in the TEM cell as desired

if __name__ == '__main__':
    tem_cell_project_name = "..\TEM Cell\Ansys Simulation Files\TEM_Cell_Project.aedt"
    design_name = "TEM Cell with F Antenna"
    file_path_f_antenna = r"..\Inverted F Antenna\Ansys Simulation Files\
                            inverted_f_antenna_short_signal_conductor.a3dcomp"

    hfss = Hfss()
    hfss.load_project(file_name=tem_cell_project_name)
    hfss.duplicate_design(name=design_name, save_after_duplicate=True)
    modeler = hfss.modeler
    # tem_cell = modeler.insert_3d_component(file_path_tem_cell)
    f_antenna = modeler.insert_3d_component(file_path_f_antenna)
    f_antenna.rotate(axis="X", angle=270.0, units="deg")
    f_antenna.move([0, 0, 11.886672])
    hfss.save_project()
    hfss.release_desktop(close_projects=False, close_desktop=False)