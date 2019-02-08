# Amber Raymer -- 1/21/19
# lab1b.asm -- The purpose of this lab is to take two hexadecimal values from the user at runtime and 
#	       then return the sum.
# Registers used - $t0: First user input
#		 - $t1: Second user input
#		 - $t2: Holds the sum of $t0 and $t1
#		 - $v0: Syscall to read initial user input, return value
# 		 - $a0: Syscall parameter
# Resources: http://courses.missouristate.edu/kenvollmar/mars/help/syscallhelp.html (Syscall function parameters)

main:
# Get first number from the user, put into $t0
li $v0, 5
syscall
add $t0, $v0, $0	# Place first value into $t0

# Get second number from the user, put into $t1
li $v0, 5
syscall
add $t1, $v0, $0	# Place second value into $t1

# Compute the sum, put into $t2
add $t2, $t0, $t1	# $t2 = $t0 + $t1

# Print $t2
add $a0, $t2, $0	# $a0 = $t2 (our sum)

li $v0, 34		# Print sum as hex value
syscall

li $v0, 10	# Exit
syscall
# end of lab1.asm