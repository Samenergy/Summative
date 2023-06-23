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
	elif [ "$choice" == "4" ]; then	
		echo "Updating a student record..."
        	read -p "Enter student ID to update: " update_id
        	if [ -f Students-list_0333.txt ]; then
	            grep -v "$update_id" Students-list_0333.txt > temp.txt
	            mv temp.txt Students-list_0333.txt
	            echo "Enter updated student email: "
	            read updated_email
	            echo "Enter updated student age: "
	            read updated_age
	            echo "Enter updated student ID: "
		    echo "Enter updated student ID: "
	            read updated_id
	            echo "$updated_email,$updated_age,$updated_id" >> Students-list_0333.txt
	            echo "Student record updated successfully!"
        	else
            	echo "No student records found."
        	fi
	elif [ "$choice" == "5" ]; then
        	echo "Exiting the application..."
        	exit 0

    	else
        	echo "Invalid choice. Please try again."
	fi
done
