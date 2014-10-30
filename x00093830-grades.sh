#test case 1
#Inputs: 50 50
#Expected Outputs:pass
#Actual Outputs:pass
result=$(java grades_v2 50 50)
failed=0
passed=0

if [[ $result != "Pass" ]]
then
	let failed=failed+1
	echo Test cast 1 Failed 
	echo
else
	let passed=passed+1
	echo Test cast 1 Passed
	echo
fi

#test case 2
#Inputs: 35 90
#Expected Outputs: Component Fail
#Actual Outputs: Component Fail
result=$(java grades_v2 35 90) 

if [[ $result != "Component Fail" ]]
then
	let failed=failed+1
	echo Test cast 2 Failed 
	echo
else
	let passed=passed+1
	echo Test cast 2 Passed
	echo
fi
#test case 3
#Inputs: 90 39
#Expected Outputs: Component Fail
#Actual Outputs: Component Fail
result=$(java grades_v2 90 39)


if [[ $result != "Component Fail" ]]
then
	let failed=failed+1
	echo Test cast 3 Failed 
	echo
else
	let passed=passed+1
	echo Test cast 3 Passed
	echo
fi

#test case 4
#Inputs: 80 80 
#Expected Outputs:Pass
#Actual Outputs:Pass
result=$(java grades_v2 60 75)


if [[ $result != "Pass" ]]
then
	let failed=failed+1
	echo Test cast 4 Failed 
	echo
else
	let passed=passed+1
	echo Test cast 4 Passed
	echo
fi

#test case 5
#Inputs: 80 80
#Expected Outputs:Pass with distinction
#Actual Outputs:blank
result=$(java grades_v2 80 80)


if [[ $result != "Pass with distinction" ]]
then
	let failed=failed+1
	echo Test cast 5 Failed 
	echo
else
	let passed=passed+1
	echo Test cast 5 Passed
	echo
fi

#test case 6
#Inputs: -30 100
#Expected Outputs:Invalid Input
#Actual Outputs:Invalid Input
result=$(java grades_v2 -30 100)


# capture passes and failures

if [[ $result != "Pass" ]]
then
	let failed=failed+1
	echo Test cast 6 Failed 
	echo
else
	let passesd=passed+1
	echo Test cast 6 Passed
fi
echo
echo Summary
echo Fails:$failed
echo Passed:$passed

