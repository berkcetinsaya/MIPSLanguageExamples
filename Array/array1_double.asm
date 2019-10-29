.data
	myArray: .double 1.258, 2.365, 3.428	#define myArray in the memory
	double1: .double 10.31
	double2: .double 11.987
	double3: .double 12.452
.text
	la $s0, myArray		# Load array's address to register $s0.

	# Offset calculation: The 3rd element of myArray is myArray[2] = 3.428. Index value is 2. Double allocates 8 bytes in the memory. 
	# bytes * index = 8 * 2 = 16. It is the offset value for the 3rd element of the array.

	### Load array's elements to registers $f0-$f4. 
	ldc1 $f0, ($s0)
	ldc1 $f2, 8($s0)
	ldc1 $f4, 16($s0)
	### Load array's elements to registers $f0-$f4.
	
	### Load new values to registers $f10-$f14.
	ldc1 $f10, double1
	ldc1 $f12, double2
	ldc1 $f14, double3
	### Load new values to registers $f10-$f14.
	
	### Store new values in array's address by using offset values.
	sdc1 $f10, ($s0)
	sdc1 $f12, 8($s0)
	sdc1 $f14, 16($s0)
	### Store new values in array's address by using offset values.
	
	### Load array's elements to registers $f18-$f22. 
	ldc1 $f18, ($s0)
	ldc1 $f20, 8($s0)
	ldc1 $f22, 16($s0)
	### Load array's elements to registers $f18-$f22.