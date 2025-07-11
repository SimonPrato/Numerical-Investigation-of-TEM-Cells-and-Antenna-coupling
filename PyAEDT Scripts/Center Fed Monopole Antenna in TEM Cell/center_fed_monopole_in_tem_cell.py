from ansys.aedt.core.hfss import Hfss
import os

"""
===============================================================================
 Script Name   : center_fed_monopole_in_tem_cell.py
 Author        : Simon Prato
 Created       : 2025-07-11
 Last Modified : 2025-07-11
 Version       : 1.0
 Description   : This script generates a center-fed monopole antenna in a TEM cell in HFSS.
                 The TEM cell project, which is in the same folder, must be open in Ansys HFSS. 
                 It contains an excitation port and the TEM cell, which the script uses.
                 After the simulation, a torchfile is saved with the S-parameters.
                 It is saved in the format:
                 "s_params_monopole_antenna_{monopole_antenna_width}_
                 {monopole_antenna_height}_{monopole_antenna_center_feed_height}".
 Usage         : python center_fed_monopole_in_tem_cell.py
===============================================================================

 Requirements  : Ansys Electronics Desktop must have PyAEDT 0.17.5 installed. 
                 PyAEDT documentation: https://aedt.docs.pyansys.com/
 Notes         : This script was written for a master thesis.
=============
"""

# TODO: Add for loop to iterate over several antenna widths and heights.
# TODO: Add and save plots with overview over simulation results.
# TODO: Evaluate dipole moments through field calculations.

def create_center_fed_monopole_antenna(monopole_height: float, center_feed_height: float,
                                       width: float, wire_radius: float):
    # Create a cylinder: orientation, origin, radius, height
    monopole = hfss.modeler.create_cylinder(
        cs_axis="Z",  # or "X", "Y" for other axes
        position=[0, 0, -monopole_height],  # origin
        radius=wire_radius,  # mm (or your units)
        height=monopole_height,  # mm (or your units)
        name="monopole"
    )

    center_connection = hfss.modeler.create_cylinder(
        cs_axis="X",  # or "X", "Y" for other axes
        position=[wire_radius/2, 0, -center_feed_height],  # origin
        radius=wire_radius,  # mm (or your units)
        height=width-wire_radius/2,  # mm (or your units)
        name="copper_cyl"
    )

    center_feed = hfss.modeler.create_cylinder(
        cs_axis="Z",  # or "X", "Y" for other axes
        position=[width-wire_radius, 0, -center_feed_height-wire_radius/2],  # origin
        radius=wire_radius,  # mm (or your units)
        height=center_feed_height,
        name="copper_cyl"
    )

    # Assign copper material
    hfss.assign_material([monopole], "copper")
    hfss.assign_material([center_connection], "copper")
    hfss.assign_material([center_feed], "copper")
    antenna = hfss.modeler.unite([monopole, center_connection, center_feed], keep_originals=False)
    return antenna


if __name__ == "__main__":
    monopole_antenna_width = 2.0  # Width of the monopole antenna in mm
    monopole_antenna_height = 10.0  # Height of the monopole antenna in mm
    monopole_antenna_center_feed_height = 5.0  # Height of the center feed in mm
    antenna_wire_radius = 0.1 # Radius of the antenna wire in mm
    # Launch HFSS (or connect to an open project)
    hfss = Hfss()

    antenna = create_center_fed_monopole_antenna(monopole_height=monopole_antenna_height,
                                                 center_feed_height=monopole_antenna_center_feed_height,
                                                 width=monopole_antenna_width,
                                                 wire_radius=antenna_wire_radius)
    excitation_rectangle = hfss.modeler.primitives["Rectangle6"]
    excitation_rectangle.move([monopole_antenna_width- 2 * antenna_wire_radius, 0 ,0]) # Move the rectangle with assigned excitation to antenna
    hfss.analyze()
    hfss.save_project()
    script_dir = os.path.abspath(os.path.dirname(__file__))
    s_param_output_file = (f"{script_dir}/s_params_monopole_antenna_{monopole_antenna_width}_"
                           f"{monopole_antenna_height}_{monopole_antenna_center_feed_height}")
    hfss.export_touchstone(setup="Setup1",
                           output_file=s_param_output_file,
                           sweep="Sweep")
    hfss.modeler.delete("monopole")
    excitation_rectangle.move([-monopole_antenna_width + 2 * antenna_wire_radius, 0, 0]) # Put excitation rectangle back to original position

    hfss.save_project()
    hfss.release_desktop(close_projects=False, close_desktop=False)

