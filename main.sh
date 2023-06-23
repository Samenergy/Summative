#!/usr/bin/env bash
while true; do
	echo " Welcome to the Bachelor Software Engineering Cohort List"
	echo "Please choose an option"
	echo " 1. Create a student record"
	echo " 2. view all student records"
	echo " 3. Delete student record"
	echo " 4. update a student record "
	echo " 5. Exit the application "

	read -p "Enter your choice: " choice

	if ["$choice " =="1"]; then
		echo "Creating a student record"
		read -p "Enter student email " email
		read -p "Enter student age" age
		read -p "Enter student ID" id
		echo "$email,$age,$id">>Student-list_0333.txt
		echo "Student record Created"

	elif ["$choice" =="2"]; then 
		cat Students-list_0333.txt

	elif [ "$choice" == "3" ]; then
        	echo "Deleting a student record..."
        	read -p "Enter student ID to delete: " delete_id
        	if [ -f Students-list_0333.txt ]; then
            		grep -v "$delete_id" Students-list_0333.txt > temp.txt
            		mv temp.txt Students-list_0333.txt
            		echo "Student record deleted successfully!"
        	else
            		echo "No student records found."
        	fi

