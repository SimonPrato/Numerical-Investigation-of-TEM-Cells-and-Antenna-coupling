from ansys.aedt.core.hfss import Hfss

if __name__ == '__main__':
    hfss_file_name = "antenna_simulations.aedt" # Insert project file name
    design_name = "current_loop" # Name of design in project


    hfss = Hfss()
    hfss.load_project(file_name=hfss_file_name)

    # Calculate the current using expression from the catalog
    expr_name = hfss.post.fields_calculator.add_expression("current_line", "current_loop_1_1")

    # Unlock HFSS
    hfss.release_desktop(close_projects=False, close_desktop=False)
