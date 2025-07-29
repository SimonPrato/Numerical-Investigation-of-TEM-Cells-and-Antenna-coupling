$begin 'Profile'
	$begin 'ProfileGroup'
		MajorVer=2024
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '07/29/2025 05:05:32')
			I(1, 'Host', 'PRATO_YOGA')
			I(1, 'Processor', '16')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2024.2.0')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:00:27')
			I(1, 'ComEngine Memory', '82.8 M')
		$end 'TotalInfo'
		GroupOptions=8
		TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Executing From\', \'C:\\\\Program Files\\\\AnsysEM\\\\Ansys Student\\\\v242\\\\Win64\\\\HFSSCOMENGINE.exe\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2024
			MinorVer=2
			Name='HPC'
			$begin 'StartInfo'
				I(1, 'Type', 'Auto')
				I(1, 'MPI Vendor', 'Intel')
				I(1, 'MPI Version', '2021')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(0, ' ')
			$end 'TotalInfo'
			GroupOptions=0
			TaskDataOptions(Memory=8)
			ProfileItem('Machine', 0, 0, 0, 0, 0, 'I(5, 1, \'Name\', \'Prato_Yoga\', 1, \'Memory\', \'13.7 GB\', 3, \'RAM Limit\', 90, \'%f%%\', 2, \'Cores\', 4, false, 1, \'Free Disk Space\', \'770 GB\')', false, true)
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Allow off core\', \'True\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Solution Basis Order\', \'1\')', false, true)
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 76.4 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2024
			MinorVer=2
			Name='Initial Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '07/29/2025 05:05:32')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:04')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Mesh', 1, 0, 2, 0, 71000, 'I(3, 2, \'Tetrahedra\', 21327, false, 1, \'Type\', \'TAU\', 2, \'Cores\', 4, false)', true, true)
			ProfileItem('Coarsen', 1, 0, 1, 0, 71000, 'I(1, 2, \'Tetrahedra\', 6077, false)', true, true)
			ProfileItem('Lambda Refine', 0, 0, 0, 0, 26360, 'I(2, 2, \'Tetrahedra\', 6077, false, 2, \'Cores\', 1, false)', true, true)
			ProfileItem('Simulation Setup', 0, 0, 0, 0, 187312, 'I(1, 1, \'Disk\', \'0 Bytes\')', true, true)
			ProfileItem('Port Adapt', 0, 0, 0, 0, 201780, 'I(2, 2, \'Tetrahedra\', 3675, false, 1, \'Disk\', \'92 KB\')', true, true)
			ProfileItem('Port Refine', 0, 0, 0, 0, 31116, 'I(2, 2, \'Tetrahedra\', 6555, false, 2, \'Cores\', 1, false)', true, true)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2024
			MinorVer=2
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '07/29/2025 05:05:37')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:09')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			$begin 'ProfileGroup'
				MajorVer=2024
				MinorVer=2
				Name='Adaptive Pass 1'
				$begin 'StartInfo'
					I(0, 'Adaptive Meshing')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 550MHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:00')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 191752, 'I(2, 2, \'Tetrahedra\', 3973, false, 1, \'Disk\', \'3 KB\')', true, true)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 233836, 'I(5, 2, \'Tetrahedra\', 3973, false, 2, \'1 Triangles\', 104, false, 2, \'2 Triangles\', 141, false, 2, \'3 Triangles\', 110, false, 1, \'Disk\', \'0 Bytes\')', true, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 1, 0, 271840, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 26889, false, 3, \'Matrix bandwidth\', 18.6298, \'%5.1f\', 1, \'Disk\', \'2.21 KB\')', true, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 271840, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'735 KB\')', true, true)
				$end 'ProfileGroup'
				ProfileItem('Data Transfer', 0, 0, 0, 0, 81256, 'I(1, 0, \'Adaptive Pass 1\')', true, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2024
				MinorVer=2
				Name='Adaptive Pass 2'
				$begin 'StartInfo'
					I(0, 'Adaptive Meshing')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 30072, 'I(2, 2, \'Tetrahedra\', 7106, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 550MHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 193388, 'I(2, 2, \'Tetrahedra\', 4535, false, 1, \'Disk\', \'3 KB\')', true, true)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 239360, 'I(5, 2, \'Tetrahedra\', 4535, false, 2, \'1 Triangles\', 104, false, 2, \'2 Triangles\', 141, false, 2, \'3 Triangles\', 110, false, 1, \'Disk\', \'1 Bytes\')', true, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 1, 0, 292228, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 30311, false, 3, \'Matrix bandwidth\', 18.8955, \'%5.1f\', 1, \'Disk\', \'14.6 KB\')', true, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 292228, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'403 KB\')', true, true)
				$end 'ProfileGroup'
				ProfileItem('Data Transfer', 0, 0, 0, 0, 81356, 'I(1, 0, \'Adaptive Pass 2\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0160521, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileFootnote('I(1, 0, \'Adaptive Passes converged\')', 0)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2024
			MinorVer=2
			Name='Frequency Sweep'
			$begin 'StartInfo'
				I(1, 'Time', '07/29/2025 05:05:47')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:12')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'HPC\', \'Enabled\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2024
				MinorVer=2
				Name='Solution - Sweep'
				$begin 'StartInfo'
					I(0, 'Interpolating HFSS Frequency Sweep, Solving Distributed - up to 4 frequencies in parallel')
					I(1, 'Time', '07/29/2025 05:05:47')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(1, 'Elapsed Time', '00:00:12')
				$end 'TotalInfo'
				GroupOptions=4
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'From 0Hz to 1GHz, 501 Frequencies\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Using automatic algorithm to locate minimum frequency for the sweep.\')', false, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 100MHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:02')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1; Automatic determination of minimum frequency\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 218956, 'I(2, 2, \'Tetrahedra\', 4535, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 1, 0, 1, 0, 237760, 'I(5, 2, \'Tetrahedra\', 4535, false, 2, \'1 Triangles\', 104, false, 2, \'2 Triangles\', 141, false, 2, \'3 Triangles\', 110, false, 1, \'Disk\', \'10 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 318164, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 30311, false, 3, \'Matrix bandwidth\', 18.8955, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 318164, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'3.29 MB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 55MHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:02')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1; Automatic determination of minimum frequency\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 218392, 'I(2, 2, \'Tetrahedra\', 4535, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 1, 0, 1, 0, 237508, 'I(5, 2, \'Tetrahedra\', 4535, false, 2, \'1 Triangles\', 104, false, 2, \'2 Triangles\', 141, false, 2, \'3 Triangles\', 110, false, 1, \'Disk\', \'9 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 317664, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 30311, false, 3, \'Matrix bandwidth\', 18.8955, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 317664, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'3.29 MB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 10MHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:02')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1; Automatic determination of minimum frequency\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 218464, 'I(2, 2, \'Tetrahedra\', 4535, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 1, 0, 1, 0, 239964, 'I(5, 2, \'Tetrahedra\', 4535, false, 2, \'1 Triangles\', 104, false, 2, \'2 Triangles\', 141, false, 2, \'3 Triangles\', 110, false, 1, \'Disk\', \'8 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 317836, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 30311, false, 3, \'Matrix bandwidth\', 18.8955, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 317836, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'3.29 MB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 5.5MHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:02')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1; Automatic determination of minimum frequency\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 218560, 'I(2, 2, \'Tetrahedra\', 4535, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 1, 0, 1, 0, 240056, 'I(5, 2, \'Tetrahedra\', 4535, false, 2, \'1 Triangles\', 104, false, 2, \'2 Triangles\', 141, false, 2, \'3 Triangles\', 110, false, 1, \'Disk\', \'8 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 317752, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 30311, false, 3, \'Matrix bandwidth\', 18.8955, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 317752, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'3.29 MB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 1MHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:02')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2; Automatic determination of minimum frequency\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 218200, 'I(2, 2, \'Tetrahedra\', 4535, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 1, 0, 1, 0, 237628, 'I(5, 2, \'Tetrahedra\', 4535, false, 2, \'1 Triangles\', 104, false, 2, \'2 Triangles\', 141, false, 2, \'3 Triangles\', 110, false, 1, \'Disk\', \'8 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 317576, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 30311, false, 3, \'Matrix bandwidth\', 18.8955, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 317576, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'3.29 MB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 1GHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2; Automatic determination of minimum frequency\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 218056, 'I(2, 2, \'Tetrahedra\', 4535, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.110e-04 and propagation constant is   1.393e+01\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 3 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.113e-04 and propagation constant is   1.393e+01\')', false, true)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 236920, 'I(5, 2, \'Tetrahedra\', 4535, false, 2, \'1 Triangles\', 104, false, 2, \'2 Triangles\', 141, false, 2, \'3 Triangles\', 110, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 317012, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 30311, false, 3, \'Matrix bandwidth\', 18.8955, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 317012, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'3.29 MB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 325MHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:02')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2; Automatic determination of minimum frequency\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 218572, 'I(2, 2, \'Tetrahedra\', 4535, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 236840, 'I(5, 2, \'Tetrahedra\', 4535, false, 2, \'1 Triangles\', 104, false, 2, \'2 Triangles\', 141, false, 2, \'3 Triangles\', 110, false, 1, \'Disk\', \'7 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 316944, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 30311, false, 3, \'Matrix bandwidth\', 18.8955, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 316944, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'3.29 MB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 775MHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2; Automatic determination of minimum frequency\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 218844, 'I(2, 2, \'Tetrahedra\', 4535, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   3.042e-04 and propagation constant is   4.304e+00\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 3 supports an additional propagating and/or slowly decaying mode whose attenuation is   3.043e-04 and propagation constant is   4.304e+00\')', false, true)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 237464, 'I(5, 2, \'Tetrahedra\', 4535, false, 2, \'1 Triangles\', 104, false, 2, \'2 Triangles\', 141, false, 2, \'3 Triangles\', 110, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 317232, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 30311, false, 3, \'Matrix bandwidth\', 18.8955, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 317232, 'I(2, 2, \'Excitations\', 3, false, 1, \'Disk\', \'3.29 MB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Frequency: 550MHz has already been solved\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 1, Frequency: 1GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 2, Frequency: 1MHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 3, Frequency: 100MHz; New subrange(s) added; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 4, Frequency: 55MHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 5, Frequency: 10MHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 6, Frequency: 5.5MHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 7, Frequency: 550MHz; S Matrix Error =  48.207%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 8, Frequency: 325MHz; S Matrix Error =   0.759%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 9, Frequency: 775MHz; Scattering matrix quantities converged; Passive within tolerance\')', false, true)
				ProfileFootnote('I(1, 0, \'Interpolating sweep converged and is passive\')', 0)
				ProfileFootnote('I(1, 0, \'HFSS: Distributed Interpolating sweep\')', 0)
			$end 'ProfileGroup'
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2024
			MinorVer=2
			Name='Simulation Summary'
			$begin 'StartInfo'
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(0, ' ')
			$end 'TotalInfo'
			GroupOptions=0
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'76.4 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:04\', 1, \'Total Memory\', \'266 MB\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:09\', 1, \'Average memory/process\', \'285 MB\', 1, \'Max memory/process\', \'285 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 4, false)', false, true)
			ProfileItem('Frequency Sweep', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:12\', 1, \'Average memory/process\', \'310 MB\', 1, \'Max memory/process\', \'311 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 4, false)', false, true)
			ProfileFootnote('I(3, 2, \'Max solved tets\', 4535, false, 2, \'Max matrix size\', 30311, false, 1, \'Matrix bandwidth\', \'18.9\')', 0)
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'07/29/2025 05:05:59\', 1, \'Status\', \'Normal Completion\')', 0)
	$end 'ProfileGroup'
$end 'Profile'
