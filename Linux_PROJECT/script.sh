#!/bin/bash

#Test Program


#Function to Check User Presence
##########Function Start####################
check_user_presence()
{
	#Checking presence of existing user
	userinfo_line_count=`cat userinfo | wc -l`
	userinfo_index=1

	for userinfo_index in $(seq 1 $userinfo_line_count)
	do
		username_temp=`cat userinfo | head -$userinfo_index | tail -1 | cut -d ':' -f1`
		password_temp=`cat userinfo | head -$userinfo_index | tail -1 | cut -d ':' -f2`
	
		if [ $username_temp == $1 -a $password_temp == $2 ]
		then
			user_present_var="true"
		else
			user_present_var="false"
		fi
	done

}
############Function End####################

#Function for Count Down Timer
#############Function Start#################

count_down_timer()
{
seconds_temp=0
timer=$1

while [ 1 ]
do
	seconds=`date +%S`

	if [ $seconds -ne $seconds_temp ]
	then
#		echo $timer:
		let timer=$timer-1
		
		if [ $timer -eq 0 ]
		then
			break;
		fi
		seconds_temp=$seconds
	fi
done
}

############Function End####################

##########Start of Script###################

login_var=0
status=0

echo "1) Sign In
2) Sign Up
3) Exit"

echo -n "Enter Response:"
read response

echo $response

case $response in

#Existing User Login
'1') 	echo -n "Username:"
	read username
	echo -n "Password:"
	read password

#Check for minimum length of password
	if [ ${#password} -lt 8 ]
	then
		echo "Password must be of atleast 8 characters. Please try again."
		bash script.sh

#Proceed only if Passwoord length is greater than 8
	elif [ ${#password} -ge 8 ]
	then

#Call User Check Function
		check_user_presence $username $password

		if [ $user_present_var == "true" ]
		then
			echo "Login successful."
			login_var="true"
		elif [ $user_present_var == "false" ]
		then
			echo "Password mismatch occured. Please try again."
			login_var="false"
			bash script.sh
		fi
	fi
;;

#New User Creation
'2')	echo "Create User"
	echo -n "Enter Username:"
	read new_username
	echo -n "Enter Password:"
	read new_password1
	echo -n "Re-enter Password:"
	read new_password2
	
#Check for minimum length of password
	if [ ${#new_password1} -lt 8 -o ${#new_password2} -lt 8 ]
	then
		echo "Password must be of atleast 8 characters. Please try again."
		bash script.sh

#Proceed only if Password length is greater than 8
	elif [ ${#new_password1} -ge 8 -a ${#new_password2} -ge 8 ]
	then
		if [ $new_password1 -eq $new_password2 ]
		then
			echo $new_username:$new_password1 | cat >> userinfo 
			echo "New user created. Try to login."
			bash script.sh
		else
			echo "Password mismatch occured. Please try again."
			bash script.sh
		fi
	fi
;;


#Qutting Program
'3')	echo "Program will quit now...";;

esac



if [ $login_var == "true" ]
then

echo "1) Take Test
2) View Test
3) Logout"

	echo -n "Enter Response:"
	read response


	case $response in 

	'1')	echo "Test will start in 5 seconds..."
		count_down_timer 5
		status="start_test"
		;;

	'2')	cat test_report
		status="show_test_report"
		;;

	'3')	status="logout"
		;;

	esac

fi


if [ $status == "start_test" ]
then

	total_questions=`cat question_paper1 | wc -l`
	question_index=1

	#echo $total_questions,$question_index

	echo $username > answer_report
	echo
	echo "|Questions | Attempted | User Answer | Correct Answer |" | cat >> answer_report
	echo "-------------------------------------------------------" | cat >> answer_report
		for question_index in $(seq 1 $total_questions)
		do
			question=`cat question_paper1 | head -$question_index | tail -1 | cut -d ':' -f1`		
			optionA=`cat question_paper1 | head -$question_index | tail -1 | cut -d ':' -f2`
			optionB=`cat question_paper1 | head -$question_index | tail -1 | cut -d ':' -f3`
			optionC=`cat question_paper1 | head -$question_index | tail -1 | cut -d ':' -f4`
			correctANS=`cat question_paper1 | head -$question_index | tail -1 | cut -d ':' -f5`
		
			echo $question
			echo $optionA
			echo $optionB
			echo $optionC		
			read ans
		
			if [ $ans == "a" -o $ans == "b" -o $ans == "c" ]
			then
				echo "|"$question_index"         | "Yes"       | "$ans"           | "$correctANS | cat >> answer_report
			else
				echo "|"$question_index"         | "Yes"       | "Invalid Ans" | "$correctANS | cat >> answer_report
			fi
		done
		bash script.sh

elif [ $status == "show_test_report" ]
then
	cat answer_report
	bash script.sh

elif [ $status == "logout" ]
then
	bash script.sh
fi
echo success


