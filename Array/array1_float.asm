.data
	myArray: .float 1.258, 2.365, 3.428	#define myArray in the memory
	float1: .float 10.31
	float2: .float 11.987
	float3: .float 12.452
.text
	la $s0, myArray		# Load array's address to register $s0.

	# Offset calculation: The 3rd element of myArray is myArray[2] = 3.428. Index value is 2. Float allocates 4 bytes in the memory. 
	# bytes * index = 4 * 2 = 8. It is the offset value for the 3rd element of the array.

	### Load array's elements to registers $f0-$f4. 
	lwc1 $f0, ($s0)
	lwc1 $f2, 4($s0)
	lwc1 $f4, 8($s0)
	### Load array's elements to registers $f0-$f4.
	
	### Load new values to registers $f10-$f14.
	lwc1 $f10, float1
	lwc1 $f12, float2
	lwc1 $f14, float3
	### Load new values to registers $f10-$f14.
	
	### Store new values in array's address by using offset values.
	swc1 $f10, ($s0)
	swc1 $f12, 4($s0)
	swc1 $f14, 8($s0)
	### Store new values in array's address by using offset values.
	
	### Load array's elements to registers $f18-$f22. 
	lwc1 $f18, ($s0)
	lwc1 $f20, 4($s0)
	lwc1 $f22, 8($s0)
	### Load array's elements to registers $f18-$f22.