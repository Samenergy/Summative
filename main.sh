#!/usr/bin/env bash
while true; do
    echo "------------------------------------"
    echo "Welcome to the Bachelor of Software Engineering cohort list application!"
    echo "Please choose an option:"
    echo "1. Create a student record"
    echo "2. View all student records"
    echo "3. Delete a student record"
    echo "4. Update a student record"
    echo "5. Search and sort student emails"
    echo "6. Exit"

    read -p "Enter your choice: " choice
    echo "------------------------------------"

    if [ "$choice" == "1" ]; then
        echo "Creating a student record..."
        read -p "Enter student email: " email
        read -p "Enter student age: " age
        read -p "Enter student ID: " id
        echo "$email,$age,$id" >> Students-list_0333.txt
        echo "Student record created successfully!"

    elif [ "$choice" == "2" ]; then
        echo "Viewing all student records..."
        if [ ! -f Students-list_0333.txt ]; then
            echo "No student records found."
        else
            cat Students-list_0333.txt
        fi

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
            read updated_id
            echo "$updated_email,$updated_age,$updated_id" >> Students-list_0333.txt
            echo "Student record updated successfully!"
        else
            echo "No student records found."
        fi

    elif [ "$choice" == "5" ]; then
        echo "Searching and sorting student emails..."
        if [ ! -f Students-list_0333.txt ]; then
            echo "No student records found."
        else
            cut -d ',' -f 1 Students-list_0333.txt | sort > student-emails.txt
            echo "Student emails have been sorted and saved in student-emails.txt"
        fi

    elif [ "$choice" == "6" ]; then
        echo "Exiting the application..."
        exit 0

    else
        echo "Invalid choice. Please try again."

    fi
done
