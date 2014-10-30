#Test Case 1
# Inputs:80 80
#Expected Outputs: pass with distinction
#Actual Outputs: pass
test1 = java grades_v2 80 80
if["$test1" == "pass with distinction"]; then
	echo "Test Case 1 Passed"
else
	echo "Test Case 1 Failed"
fi

#Test Case 2
# Inputs: 60 60
#Expected Outputs:Pass
#Actual Outputs:Pass
java grades_v2 40 60

#Test Case 3
# Inputs: 100 70
#Expected Outputs: pass with distinction
#Actual Outputs:pass with distinction
java grades_v2 100 70

#Test Case 4
# Inputs:100 39
#Expected Outputs:Component Component Fail
#Actual Outputs:Component fail
java grades_v2 100 39

#Test Case 5
# Inputs: 0 0
#Expected Outputs: Fail
#Actual Outputs:Component Fail
java grades_v2 0 0

#Test Case 6
# Inputs: 101 39
#Expected Outputs: Invalid input
#Actual Outputs:Invalid input
java grades_v2 101 39


#Test Case 1 Failed

#Test Case 2 Passed

#Test Case 3 Passed

#Test Case 4 Failed

#Test Case 5 Failed

#Test Case 6 Passed
#===================
#Test Suite Summary:
#===================

#Passed: 3
#Failed: 3


