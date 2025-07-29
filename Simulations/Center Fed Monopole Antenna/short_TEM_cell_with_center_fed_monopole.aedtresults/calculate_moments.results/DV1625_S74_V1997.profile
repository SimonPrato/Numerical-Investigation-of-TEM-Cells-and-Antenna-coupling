$begin 'Profile'
	$begin 'ProfileGroup'
		MajorVer=2024
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '07/24/2025 20:46:36')
			I(1, 'Host', 'PRATO_YOGA')
			I(1, 'Processor', '16')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2024.2.0')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:01:01')
			I(1, 'ComEngine Memory', '82.2 M')
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
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 75.2 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2024
			MinorVer=2
			Name='Initial Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '07/24/2025 20:46:36')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:02')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Mesh', 0, 0, 0, 0, 32000, 'I(2, 1, \'Type\', \'Phi\', 2, \'Tetrahedra\', 374, false)', true, true)
			ProfileItem('Post', 0, 0, 0, 0, 34372, 'I(2, 2, \'Tetrahedra\', 385, false, 2, \'Cores\', 1, false)', true, true)
			ProfileItem('Lambda Refine', 0, 0, 0, 0, 24080, 'I(2, 2, \'Tetrahedra\', 1647, false, 2, \'Cores\', 1, false)', true, true)
			ProfileItem('Simulation Setup', 0, 0, 0, 0, 174312, 'I(1, 1, \'Disk\', \'0 Bytes\')', true, true)
			ProfileItem('Port Adapt', 0, 0, 0, 0, 189784, 'I(2, 2, \'Tetrahedra\', 1489, false, 1, \'Disk\', \'91.4 KB\')', true, true)
			ProfileItem('Port Refine', 0, 0, 0, 0, 22608, 'I(2, 2, \'Tetrahedra\', 2062, false, 2, \'Cores\', 1, false)', true, true)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2024
			MinorVer=2
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '07/24/2025 20:46:39')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:07')
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
					Name='Frequency - 1.55GHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:00')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 177892, 'I(2, 2, \'Tetrahedra\', 1879, false, 1, \'Disk\', \'3.37 KB\')', true, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.604e-04 and propagation constant is   2.846e+01\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.594e-04 and propagation constant is   2.846e+01\')', false, true)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 199088, 'I(4, 2, \'Tetrahedra\', 1879, false, 2, \'1 Triangles\', 152, false, 2, \'2 Triangles\', 134, false, 1, \'Disk\', \'0 Bytes\')', true, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 215876, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 11620, false, 3, \'Matrix bandwidth\', 17.971, \'%5.1f\', 1, \'Disk\', \'2.21 KB\')', true, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 215876, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'440 KB\')', true, true)
				$end 'ProfileGroup'
				ProfileItem('Data Transfer', 0, 0, 0, 0, 79648, 'I(1, 0, \'Adaptive Pass 1\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 24164, 'I(2, 2, \'Tetrahedra\', 3002, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 1.55GHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:00')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 179800, 'I(2, 2, \'Tetrahedra\', 2775, false, 1, \'Disk\', \'3.37 KB\')', true, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.602e-04 and propagation constant is   2.846e+01\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.592e-04 and propagation constant is   2.846e+01\')', false, true)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 209008, 'I(4, 2, \'Tetrahedra\', 2775, false, 2, \'1 Triangles\', 154, false, 2, \'2 Triangles\', 134, false, 1, \'Disk\', \'142 Bytes\')', true, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 238388, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 17168, false, 3, \'Matrix bandwidth\', 18.8799, \'%5.1f\', 1, \'Disk\', \'22.9 KB\')', true, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 238388, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.02 MB\')', true, true)
				$end 'ProfileGroup'
				ProfileItem('Data Transfer', 0, 0, 0, 0, 80272, 'I(1, 0, \'Adaptive Pass 2\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.00911071, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileFootnote('I(1, 0, \'Adaptive Passes converged\')', 0)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2024
			MinorVer=2
			Name='Frequency Sweep'
			$begin 'StartInfo'
				I(1, 'Time', '07/24/2025 20:46:46')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:51')
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
					I(1, 'Time', '07/24/2025 20:46:46')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(1, 'Elapsed Time', '00:00:51')
				$end 'TotalInfo'
				GroupOptions=4
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'From 0Hz to 3GHz, 501 Frequencies\')', false, true)
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
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1; Automatic determination of minimum frequency\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 206072, 'I(2, 2, \'Tetrahedra\', 2775, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 219968, 'I(4, 2, \'Tetrahedra\', 2775, false, 2, \'1 Triangles\', 154, false, 2, \'2 Triangles\', 134, false, 1, \'Disk\', \'40 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 260032, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 17168, false, 3, \'Matrix bandwidth\', 18.8799, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 260032, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.36 MB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 55MHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1; Automatic determination of minimum frequency\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 205944, 'I(2, 2, \'Tetrahedra\', 2775, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 219868, 'I(4, 2, \'Tetrahedra\', 2775, false, 2, \'1 Triangles\', 154, false, 2, \'2 Triangles\', 134, false, 1, \'Disk\', \'40 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 259648, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 17168, false, 3, \'Matrix bandwidth\', 18.8799, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 259648, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.36 MB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 10MHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1; Automatic determination of minimum frequency\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 205940, 'I(2, 2, \'Tetrahedra\', 2775, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 220232, 'I(4, 2, \'Tetrahedra\', 2775, false, 2, \'1 Triangles\', 154, false, 2, \'2 Triangles\', 134, false, 1, \'Disk\', \'40 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 260248, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 17168, false, 3, \'Matrix bandwidth\', 18.8799, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 260248, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.36 MB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 5.5MHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1; Automatic determination of minimum frequency\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 205892, 'I(2, 2, \'Tetrahedra\', 2775, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 219964, 'I(4, 2, \'Tetrahedra\', 2775, false, 2, \'1 Triangles\', 154, false, 2, \'2 Triangles\', 134, false, 1, \'Disk\', \'40 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 259708, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 17168, false, 3, \'Matrix bandwidth\', 18.8799, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 259708, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.36 MB\')', true, false)
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
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2; Automatic determination of minimum frequency\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 205952, 'I(2, 2, \'Tetrahedra\', 2775, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 219860, 'I(4, 2, \'Tetrahedra\', 2775, false, 2, \'1 Triangles\', 154, false, 2, \'2 Triangles\', 134, false, 1, \'Disk\', \'40 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 259624, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 17168, false, 3, \'Matrix bandwidth\', 18.8799, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 259624, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.36 MB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 3GHz'
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 206004, 'I(2, 2, \'Tetrahedra\', 2775, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   3.676e-04 and propagation constant is   6.089e+01\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   3.659e-04 and propagation constant is   6.089e+01\')', false, true)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 220004, 'I(4, 2, \'Tetrahedra\', 2775, false, 2, \'1 Triangles\', 154, false, 2, \'2 Triangles\', 134, false, 1, \'Disk\', \'12 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 259896, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 17168, false, 3, \'Matrix bandwidth\', 18.8799, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 259896, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.36 MB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 825MHz'
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 206380, 'I(2, 2, \'Tetrahedra\', 2775, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.271e-04 and propagation constant is   7.326e+00\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.267e-04 and propagation constant is   7.325e+00\')', false, true)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 220452, 'I(4, 2, \'Tetrahedra\', 2775, false, 2, \'1 Triangles\', 154, false, 2, \'2 Triangles\', 134, false, 1, \'Disk\', \'21 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 260272, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 17168, false, 3, \'Matrix bandwidth\', 18.8799, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 260272, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.36 MB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 2.275GHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2; Automatic determination of minimum frequency\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 206088, 'I(2, 2, \'Tetrahedra\', 2775, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   3.186e-04 and propagation constant is   4.503e+01\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   3.172e-04 and propagation constant is   4.503e+01\')', false, true)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 220040, 'I(4, 2, \'Tetrahedra\', 2775, false, 2, \'1 Triangles\', 154, false, 2, \'2 Triangles\', 134, false, 1, \'Disk\', \'10 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 259744, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 17168, false, 3, \'Matrix bandwidth\', 18.8799, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 259744, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.36 MB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Frequency: 1.55GHz has already been solved\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 1, Frequency: 3GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 2, Frequency: 1MHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 3, Frequency: 100MHz; New subrange(s) added; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 4, Frequency: 55MHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 5, Frequency: 10MHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 6, Frequency: 5.5MHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 7, Frequency: 1.55GHz; S Matrix Error = 251.863%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 8, Frequency: 825MHz; S Matrix Error = 299.282%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 9, Frequency: 2.275GHz; S Matrix Error =  84.784%\')', false, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 2.6375GHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #3\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 206232, 'I(2, 2, \'Tetrahedra\', 2775, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   3.440e-04 and propagation constant is   5.301e+01\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   3.425e-04 and propagation constant is   5.301e+01\')', false, true)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 220224, 'I(4, 2, \'Tetrahedra\', 2775, false, 2, \'1 Triangles\', 154, false, 2, \'2 Triangles\', 134, false, 1, \'Disk\', \'10 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 260132, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 17168, false, 3, \'Matrix bandwidth\', 18.8799, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 260132, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.57 MB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 1.9125GHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #3\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 206000, 'I(2, 2, \'Tetrahedra\', 2775, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.909e-04 and propagation constant is   3.690e+01\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.896e-04 and propagation constant is   3.690e+01\')', false, true)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 219896, 'I(4, 2, \'Tetrahedra\', 2775, false, 2, \'1 Triangles\', 154, false, 2, \'2 Triangles\', 134, false, 1, \'Disk\', \'18 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 259664, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 17168, false, 3, \'Matrix bandwidth\', 18.8799, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 259664, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.57 MB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 1.1875GHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #3\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 205892, 'I(2, 2, \'Tetrahedra\', 2775, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.267e-04 and propagation constant is   1.934e+01\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.258e-04 and propagation constant is   1.934e+01\')', false, true)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 219664, 'I(4, 2, \'Tetrahedra\', 2775, false, 2, \'1 Triangles\', 154, false, 2, \'2 Triangles\', 134, false, 1, \'Disk\', \'3 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 259500, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 17168, false, 3, \'Matrix bandwidth\', 18.8799, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 259500, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.57 MB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 462.5MHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #3\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 206336, 'I(2, 2, \'Tetrahedra\', 2775, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 220264, 'I(4, 2, \'Tetrahedra\', 2775, false, 2, \'1 Triangles\', 154, false, 2, \'2 Triangles\', 134, false, 1, \'Disk\', \'32 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 260060, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 17168, false, 3, \'Matrix bandwidth\', 18.8799, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 260060, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.57 MB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 10, Frequency: 2.6375GHz; S Matrix Error =   2.576%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 11, Frequency: 1.9125GHz; S Matrix Error =   1.058%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 12, Frequency: 1.1875GHz; S Matrix Error =   0.109%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 13, Frequency: 462.5MHz; S Matrix Error =   0.073%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 83248, 'I(1, 0, \'Frequency Group #3; Interpolating frequency sweep\')', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 643.75MHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #4\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 206156, 'I(2, 2, \'Tetrahedra\', 2775, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 220084, 'I(4, 2, \'Tetrahedra\', 2775, false, 2, \'1 Triangles\', 154, false, 2, \'2 Triangles\', 134, false, 1, \'Disk\', \'30 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 259912, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 17168, false, 3, \'Matrix bandwidth\', 18.8799, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 259912, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.57 MB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 281.25MHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #4\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 206132, 'I(2, 2, \'Tetrahedra\', 2775, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 220080, 'I(4, 2, \'Tetrahedra\', 2775, false, 2, \'1 Triangles\', 154, false, 2, \'2 Triangles\', 134, false, 1, \'Disk\', \'38 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 260120, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 17168, false, 3, \'Matrix bandwidth\', 18.8799, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 260120, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.57 MB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 2.81875GHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #4\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 206396, 'I(2, 2, \'Tetrahedra\', 2775, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   3.560e-04 and propagation constant is   5.696e+01\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   3.544e-04 and propagation constant is   5.696e+01\')', false, true)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 220604, 'I(4, 2, \'Tetrahedra\', 2775, false, 2, \'1 Triangles\', 154, false, 2, \'2 Triangles\', 134, false, 1, \'Disk\', \'10 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 260340, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 17168, false, 3, \'Matrix bandwidth\', 18.8799, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 260340, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.57 MB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 2.45625GHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #4\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 205992, 'I(2, 2, \'Tetrahedra\', 2775, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   3.315e-04 and propagation constant is   4.904e+01\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   3.301e-04 and propagation constant is   4.904e+01\')', false, true)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 219844, 'I(4, 2, \'Tetrahedra\', 2775, false, 2, \'1 Triangles\', 154, false, 2, \'2 Triangles\', 134, false, 1, \'Disk\', \'8 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 259920, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 17168, false, 3, \'Matrix bandwidth\', 18.8799, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 259920, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.57 MB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 14, Frequency: 643.75MHz; S Matrix Error =   0.063%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 15, Frequency: 281.25MHz; Scattering matrix quantities converged; Passivity Error =   0.005599\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 16, Frequency: 2.81875GHz; Scattering matrix quantities converged; Passivity Error =   0.000398\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 17, Frequency: 2.45625GHz; Scattering matrix quantities converged; Passivity Error =   0.063286\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 83560, 'I(1, 0, \'Frequency Group #4; Interpolating frequency sweep\')', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 2.442GHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:00')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'HFSS: Single Frequency Solve Group #5\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 178628, 'I(2, 2, \'Tetrahedra\', 2775, false, 1, \'Disk\', \'0 Bytes\')', true, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   3.305e-04 and propagation constant is   4.873e+01\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   3.291e-04 and propagation constant is   4.873e+01\')', false, true)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 208760, 'I(4, 2, \'Tetrahedra\', 2775, false, 2, \'1 Triangles\', 154, false, 2, \'2 Triangles\', 134, false, 1, \'Disk\', \'9 Bytes\')', true, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 235860, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 17168, false, 3, \'Matrix bandwidth\', 18.8799, \'%5.1f\', 1, \'Disk\', \'1.25 KB\')', true, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 235860, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'931 KB\')', true, true)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 18, Frequency: 2.442GHz; Scattering matrix quantities converged; Passivity Error =   0.000661\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 83652, 'I(1, 0, \'Frequency #17;  Interpolating frequency sweep\')', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 2.448GHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:00')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'HFSS: Single Frequency Solve Group #6\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 178700, 'I(2, 2, \'Tetrahedra\', 2775, false, 1, \'Disk\', \'0 Bytes\')', true, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   3.309e-04 and propagation constant is   4.886e+01\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   3.295e-04 and propagation constant is   4.886e+01\')', false, true)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 208720, 'I(4, 2, \'Tetrahedra\', 2775, false, 2, \'1 Triangles\', 154, false, 2, \'2 Triangles\', 134, false, 1, \'Disk\', \'0 Bytes\')', true, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 236480, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 17168, false, 3, \'Matrix bandwidth\', 18.8799, \'%5.1f\', 1, \'Disk\', \'1.25 KB\')', true, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 236480, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'931 KB\')', true, true)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 19, Frequency: 2.448GHz; Scattering matrix quantities converged; Passivity Error =   0.000102\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 83656, 'I(1, 0, \'Frequency #18;  Interpolating frequency sweep\')', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 1.434GHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:00')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'HFSS: Single Frequency Solve Group #7\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 178568, 'I(2, 2, \'Tetrahedra\', 2775, false, 1, \'Disk\', \'0 Bytes\')', true, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.497e-04 and propagation constant is   2.565e+01\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.487e-04 and propagation constant is   2.565e+01\')', false, true)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 208936, 'I(4, 2, \'Tetrahedra\', 2775, false, 2, \'1 Triangles\', 154, false, 2, \'2 Triangles\', 134, false, 1, \'Disk\', \'0 Bytes\')', true, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 235436, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 17168, false, 3, \'Matrix bandwidth\', 18.8799, \'%5.1f\', 1, \'Disk\', \'1.25 KB\')', true, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 235436, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'931 KB\')', true, true)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 20, Frequency: 1.434GHz; Scattering matrix quantities converged; Passivity Error =   0.000357\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 83660, 'I(1, 0, \'Frequency #19;  Interpolating frequency sweep\')', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 2.004GHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:00')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'HFSS: Single Frequency Solve Group #8\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 178996, 'I(2, 2, \'Tetrahedra\', 2775, false, 1, \'Disk\', \'0 Bytes\')', true, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.981e-04 and propagation constant is   3.897e+01\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.968e-04 and propagation constant is   3.897e+01\')', false, true)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 208960, 'I(4, 2, \'Tetrahedra\', 2775, false, 2, \'1 Triangles\', 154, false, 2, \'2 Triangles\', 134, false, 1, \'Disk\', \'10 Bytes\')', true, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 235676, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 17168, false, 3, \'Matrix bandwidth\', 18.8799, \'%5.1f\', 1, \'Disk\', \'1.25 KB\')', true, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 235676, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'931 KB\')', true, true)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 21, Frequency: 2.004GHz; Scattering matrix quantities converged; Passivity Error =   0.003077\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 83696, 'I(1, 0, \'Frequency #20;  Interpolating frequency sweep\')', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 1.692GHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:00')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'HFSS: Single Frequency Solve Group #9\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 179048, 'I(2, 2, \'Tetrahedra\', 2775, false, 1, \'Disk\', \'0 Bytes\')', true, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.726e-04 and propagation constant is   3.182e+01\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.715e-04 and propagation constant is   3.182e+01\')', false, true)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 209140, 'I(4, 2, \'Tetrahedra\', 2775, false, 2, \'1 Triangles\', 154, false, 2, \'2 Triangles\', 134, false, 1, \'Disk\', \'0 Bytes\')', true, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 235928, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 17168, false, 3, \'Matrix bandwidth\', 18.8799, \'%5.1f\', 1, \'Disk\', \'1.25 KB\')', true, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 235928, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'931 KB\')', true, true)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 22, Frequency: 1.692GHz; Scattering matrix quantities converged; Passivity Error =   0.014598\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 83712, 'I(1, 0, \'Frequency #21;  Interpolating frequency sweep\')', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 1.728GHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:00')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'HFSS: Single Frequency Solve Group #10\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 178736, 'I(2, 2, \'Tetrahedra\', 2775, false, 1, \'Disk\', \'0 Bytes\')', true, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.757e-04 and propagation constant is   3.265e+01\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.745e-04 and propagation constant is   3.265e+01\')', false, true)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 208756, 'I(4, 2, \'Tetrahedra\', 2775, false, 2, \'1 Triangles\', 154, false, 2, \'2 Triangles\', 134, false, 1, \'Disk\', \'4 Bytes\')', true, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 234732, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 17168, false, 3, \'Matrix bandwidth\', 18.8799, \'%5.1f\', 1, \'Disk\', \'1.25 KB\')', true, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 234732, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'931 KB\')', true, true)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 23, Frequency: 1.728GHz; Scattering matrix quantities converged; Passivity Error =   0.000393\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 83772, 'I(1, 0, \'Frequency #22;  Interpolating frequency sweep\')', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 1.734GHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:00')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'HFSS: Single Frequency Solve Group #11\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 178624, 'I(2, 2, \'Tetrahedra\', 2775, false, 1, \'Disk\', \'0 Bytes\')', true, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.762e-04 and propagation constant is   3.279e+01\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.750e-04 and propagation constant is   3.279e+01\')', false, true)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 208924, 'I(4, 2, \'Tetrahedra\', 2775, false, 2, \'1 Triangles\', 154, false, 2, \'2 Triangles\', 134, false, 1, \'Disk\', \'0 Bytes\')', true, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 235128, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 17168, false, 3, \'Matrix bandwidth\', 18.8799, \'%5.1f\', 1, \'Disk\', \'1.25 KB\')', true, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 235128, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'931 KB\')', true, true)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 24, Frequency: 1.734GHz; Scattering matrix quantities converged; Passivity Error =   0.000140\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 83800, 'I(1, 0, \'Frequency #23;  Interpolating frequency sweep\')', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 2.112GHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:00')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'HFSS: Single Frequency Solve Group #12\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 178720, 'I(2, 2, \'Tetrahedra\', 2775, false, 1, \'Disk\', \'0 Bytes\')', true, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   3.064e-04 and propagation constant is   4.140e+01\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   3.051e-04 and propagation constant is   4.140e+01\')', false, true)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 209140, 'I(4, 2, \'Tetrahedra\', 2775, false, 2, \'1 Triangles\', 154, false, 2, \'2 Triangles\', 134, false, 1, \'Disk\', \'8 Bytes\')', true, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 235188, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 17168, false, 3, \'Matrix bandwidth\', 18.8799, \'%5.1f\', 1, \'Disk\', \'1.25 KB\')', true, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 235188, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'931 KB\')', true, true)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 25, Frequency: 2.112GHz; Scattering matrix quantities converged; Passivity Error =   0.001272\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 83828, 'I(1, 0, \'Frequency #24;  Interpolating frequency sweep\')', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 2.136GHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:00')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'HFSS: Single Frequency Solve Group #13\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 178616, 'I(2, 2, \'Tetrahedra\', 2775, false, 1, \'Disk\', \'0 Bytes\')', true, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   3.082e-04 and propagation constant is   4.194e+01\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   3.069e-04 and propagation constant is   4.194e+01\')', false, true)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 208636, 'I(4, 2, \'Tetrahedra\', 2775, false, 2, \'1 Triangles\', 154, false, 2, \'2 Triangles\', 134, false, 1, \'Disk\', \'0 Bytes\')', true, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 235900, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 17168, false, 3, \'Matrix bandwidth\', 18.8799, \'%5.1f\', 1, \'Disk\', \'1.25 KB\')', true, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 235900, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'931 KB\')', true, true)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 26, Frequency: 2.136GHz; Scattering matrix quantities converged; Passivity Error =   0.000947\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 83876, 'I(1, 0, \'Frequency #25;  Interpolating frequency sweep\')', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 1.26GHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:00')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'HFSS: Single Frequency Solve Group #14\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 178540, 'I(2, 2, \'Tetrahedra\', 2775, false, 1, \'Disk\', \'0 Bytes\')', true, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.335e-04 and propagation constant is   2.126e+01\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.326e-04 and propagation constant is   2.126e+01\')', false, true)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 207976, 'I(4, 2, \'Tetrahedra\', 2775, false, 2, \'1 Triangles\', 154, false, 2, \'2 Triangles\', 134, false, 1, \'Disk\', \'0 Bytes\')', true, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 235580, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 17168, false, 3, \'Matrix bandwidth\', 18.8799, \'%5.1f\', 1, \'Disk\', \'1.25 KB\')', true, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 235580, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'931 KB\')', true, true)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 27, Frequency: 1.26GHz; Scattering matrix quantities converged; Passive within tolerance\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 83816, 'I(1, 0, \'Frequency #26;  Interpolating frequency sweep\')', true, true)
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
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'75.2 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:02\', 1, \'Total Memory\', \'219 MB\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:07\', 1, \'Average memory/process\', \'233 MB\', 1, \'Max memory/process\', \'233 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 4, false)', false, true)
			ProfileItem('Frequency Sweep', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:51\', 1, \'Average memory/process\', \'245 MB\', 1, \'Max memory/process\', \'254 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 4, false)', false, true)
			ProfileFootnote('I(3, 2, \'Max solved tets\', 2775, false, 2, \'Max matrix size\', 17168, false, 1, \'Matrix bandwidth\', \'18.9\')', 0)
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'07/24/2025 20:47:38\', 1, \'Status\', \'Normal Completion\')', 0)
	$end 'ProfileGroup'
	$begin 'ProfileGroup'
		MajorVer=2024
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '07/28/2025 11:47:45')
			I(1, 'Host', 'PRATO_YOGA')
			I(1, 'Processor', '16')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2024.2.0')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:00:21')
			I(1, 'ComEngine Memory', '76.6 M')
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
			ProfileItem('Machine', 0, 0, 0, 0, 0, 'I(5, 1, \'Name\', \'Prato_Yoga\', 1, \'Memory\', \'13.7 GB\', 3, \'RAM Limit\', 90, \'%f%%\', 2, \'Cores\', 4, false, 1, \'Free Disk Space\', \'769 GB\')', false, true)
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Allow off core\', \'True\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Solution Basis Order\', \'1\')', false, true)
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 70.1 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2024
			MinorVer=2
			Name='Initial Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '07/28/2025 11:47:45')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:01')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Simulation Setup', 0, 0, 0, 0, 177628, 'I(1, 1, \'Disk\', \'0 Bytes\')', true, true)
			ProfileItem('Port Adapt', 0, 0, 0, 0, 192336, 'I(2, 2, \'Tetrahedra\', 2775, false, 1, \'Disk\', \'0 Bytes\')', true, true)
			ProfileItem('Port Refine', 0, 0, 0, 0, 22876, 'I(2, 2, \'Tetrahedra\', 3101, false, 2, \'Cores\', 1, false)', true, true)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2024
			MinorVer=2
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '07/28/2025 11:47:46')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:07')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 180464, 'I(2, 2, \'Tetrahedra\', 2860, false, 1, \'Disk\', \'3.37 KB\')', true, true)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 209340, 'I(4, 2, \'Tetrahedra\', 2860, false, 2, \'1 Triangles\', 177, false, 2, \'2 Triangles\', 157, false, 1, \'Disk\', \'0 Bytes\')', true, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 236560, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 17614, false, 3, \'Matrix bandwidth\', 18.7975, \'%5.1f\', 1, \'Disk\', \'70.9 KB\')', true, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 236560, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.23 MB\')', true, true)
				$end 'ProfileGroup'
				ProfileItem('Data Transfer', 0, 0, 0, 0, 74904, 'I(1, 0, \'Adaptive Pass 2\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 1, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2024
				MinorVer=2
				Name='Adaptive Pass 3'
				$begin 'StartInfo'
					I(0, 'Adaptive Meshing')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 24184, 'I(2, 2, \'Tetrahedra\', 3673, false, 2, \'Cores\', 1, false)', true, true)
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 181456, 'I(2, 2, \'Tetrahedra\', 3410, false, 1, \'Disk\', \'3.37 KB\')', true, true)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 215712, 'I(4, 2, \'Tetrahedra\', 3410, false, 2, \'1 Triangles\', 177, false, 2, \'2 Triangles\', 157, false, 1, \'Disk\', \'0 Bytes\')', true, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 1, 0, 255068, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 21096, false, 3, \'Matrix bandwidth\', 19.2518, \'%5.1f\', 1, \'Disk\', \'14.9 KB\')', true, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 255068, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.15 MB\')', true, true)
				$end 'ProfileGroup'
				ProfileItem('Data Transfer', 0, 0, 0, 0, 76588, 'I(1, 0, \'Adaptive Pass 3\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0061548, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileFootnote('I(1, 0, \'Adaptive Passes converged\')', 0)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2024
			MinorVer=2
			Name='Frequency Sweep'
			$begin 'StartInfo'
				I(1, 'Time', '07/28/2025 11:47:54')
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
					I(1, 'Time', '07/28/2025 11:47:54')
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
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1; Automatic determination of minimum frequency\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 207584, 'I(2, 2, \'Tetrahedra\', 3410, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 221772, 'I(4, 2, \'Tetrahedra\', 3410, false, 2, \'1 Triangles\', 177, false, 2, \'2 Triangles\', 157, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 277756, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 21096, false, 3, \'Matrix bandwidth\', 19.2518, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 277756, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.67 MB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 55MHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1; Automatic determination of minimum frequency\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 207648, 'I(2, 2, \'Tetrahedra\', 3410, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 222072, 'I(4, 2, \'Tetrahedra\', 3410, false, 2, \'1 Triangles\', 177, false, 2, \'2 Triangles\', 157, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 277816, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 21096, false, 3, \'Matrix bandwidth\', 19.2518, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 277816, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.67 MB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 10MHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1; Automatic determination of minimum frequency\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 207588, 'I(2, 2, \'Tetrahedra\', 3410, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 221948, 'I(4, 2, \'Tetrahedra\', 3410, false, 2, \'1 Triangles\', 177, false, 2, \'2 Triangles\', 157, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 277960, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 21096, false, 3, \'Matrix bandwidth\', 19.2518, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 277960, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.67 MB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 5.5MHz'
					$begin 'StartInfo'
						I(0, 'Prato_Yoga')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1; Automatic determination of minimum frequency\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 207724, 'I(2, 2, \'Tetrahedra\', 3410, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 221980, 'I(4, 2, \'Tetrahedra\', 3410, false, 2, \'1 Triangles\', 177, false, 2, \'2 Triangles\', 157, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 277932, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 21096, false, 3, \'Matrix bandwidth\', 19.2518, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 277932, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.67 MB\')', true, false)
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
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2; Automatic determination of minimum frequency\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 207740, 'I(2, 2, \'Tetrahedra\', 3410, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 221996, 'I(4, 2, \'Tetrahedra\', 3410, false, 2, \'1 Triangles\', 177, false, 2, \'2 Triangles\', 157, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 278384, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 21096, false, 3, \'Matrix bandwidth\', 19.2518, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 278384, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.67 MB\')', true, false)
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 207352, 'I(2, 2, \'Tetrahedra\', 3410, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.099e-04 and propagation constant is   1.393e+01\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.103e-04 and propagation constant is   1.393e+01\')', false, true)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 221840, 'I(4, 2, \'Tetrahedra\', 3410, false, 2, \'1 Triangles\', 177, false, 2, \'2 Triangles\', 157, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 277580, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 21096, false, 3, \'Matrix bandwidth\', 19.2518, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 277580, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.67 MB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2024
					MinorVer=2
					Name='Frequency - 325MHz'
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 207136, 'I(2, 2, \'Tetrahedra\', 3410, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 221544, 'I(4, 2, \'Tetrahedra\', 3410, false, 2, \'1 Triangles\', 177, false, 2, \'2 Triangles\', 157, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 277328, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 21096, false, 3, \'Matrix bandwidth\', 19.2518, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 277328, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.67 MB\')', true, false)
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 207688, 'I(2, 2, \'Tetrahedra\', 3410, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   3.039e-04 and propagation constant is   4.303e+00\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   3.040e-04 and propagation constant is   4.303e+00\')', false, true)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 222020, 'I(4, 2, \'Tetrahedra\', 3410, false, 2, \'1 Triangles\', 177, false, 2, \'2 Triangles\', 157, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Matrix solver automatically selects Direct Solver\\\
\')', false, true)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 277888, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 21096, false, 3, \'Matrix bandwidth\', 19.2518, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 277888, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.67 MB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Frequency: 550MHz has already been solved\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 1, Frequency: 1GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 2, Frequency: 1MHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 3, Frequency: 100MHz; New subrange(s) added; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 4, Frequency: 55MHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 5, Frequency: 10MHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 6, Frequency: 5.5MHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 7, Frequency: 550MHz; S Matrix Error =  48.134%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 8, Frequency: 325MHz; S Matrix Error =   0.758%\')', false, true)
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
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'70.1 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:01\', 1, \'Total Memory\', \'210 MB\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:07\', 1, \'Average memory/process\', \'249 MB\', 1, \'Max memory/process\', \'249 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 4, false)', false, true)
			ProfileItem('Frequency Sweep', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:12\', 1, \'Average memory/process\', \'271 MB\', 1, \'Max memory/process\', \'272 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 4, false)', false, true)
			ProfileFootnote('I(3, 2, \'Max solved tets\', 3410, false, 2, \'Max matrix size\', 21096, false, 1, \'Matrix bandwidth\', \'19.3\')', 0)
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'07/28/2025 11:48:06\', 1, \'Status\', \'Normal Completion\')', 0)
	$end 'ProfileGroup'
$end 'Profile'
