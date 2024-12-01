#!/bin/bash

echo "Welcome to the Ubuntu Terminal Learning Program!"
echo "This interactive program will teach you everything about the terminal step by step."
echo "Let's get started! Press Enter to begin."
read

pause() {
    echo
    echo "Press Enter to continue..."
    read
}

lesson1() {
    echo "Lesson 1: Basic Commands"
    echo "--------------------------"
    echo "1. The 'ls' command lists files in a directory."
    echo "Try running: ls"
    pause

    echo "2. The 'pwd' command shows your current directory."
    echo "Try running: pwd"
    pause

    echo "3. The 'cd' command changes directories."
    echo "Example: cd /tmp"
    echo "Try navigating to the /tmp directory."
    pause

    echo "4. The 'man' command shows the manual for any command."
    echo "Example: man ls"
    echo "Try running it to learn more about 'ls'."
    pause

    echo "Lesson 1 Complete! You now know how to navigate and explore files."
}

lesson2() {
    echo "Lesson 2: File Operations"
    echo "--------------------------"
    echo "1. The 'touch' command creates an empty file."
    echo "Try creating a file: touch myfile.txt"
    pause

    echo "2. The 'mkdir' command creates a directory."
    echo "Try creating a directory: mkdir myfolder"
    pause

    echo "3. The 'rm' command removes files, and 'rmdir' removes empty directories."
    echo "Try removing the file and directory you just created."
    pause

    echo "4. The 'cp' command copies files."
    echo "Example: cp myfile.txt myfile_backup.txt"
    echo "Try it now."
    pause

    echo "5. The 'mv' command moves or renames files."
    echo "Example: mv myfile_backup.txt newname.txt"
    echo "Try it now."
    pause

    echo "Lesson 2 Complete! You can now create, remove, copy, and rename files."
}

lesson3() {
    echo "Lesson 3: Permissions"
    echo "-----------------------"
    echo "1. The 'chmod' command changes file permissions."
    echo "Example: chmod 755 myfile.txt"
    echo "Try it now and check with 'ls -l'."
    pause

    echo "2. The 'chown' command changes file ownership."
    echo "Example: sudo chown $USER myfile.txt"
    echo "Try it now."
    pause

    echo "Lesson 3 Complete! You now understand file permissions and ownership."
}

lesson4() {
    echo "Lesson 4: Processes and Monitoring"
    echo "-----------------------------------"
    echo "1. The 'ps' command shows running processes."
    echo "Try it now: ps"
    pause

    echo "2. The 'top' command shows a dynamic view of processes."
    echo "Try it now: top (Press 'q' to exit.)"
    pause

    echo "3. The 'kill' command ends a process by its PID."
    echo "Example: kill -9 <PID>"
    echo "Try finding a process and ending it."
    pause

    echo "Lesson 4 Complete! You can now monitor and manage processes."
}

lesson5() {
    echo "Lesson 5: Networking"
    echo "---------------------"
    echo "1. The 'ip a' command shows network interfaces."
    echo "Try it now: ip a"
    pause

    echo "2. The 'ping' command checks connectivity."
    echo "Example: ping -c 4 google.com"
    echo "Try it now."
    pause

    echo "3. The 'curl' command fetches data from a URL."
    echo "Example: curl http://example.com"
    echo "Try it now."
    pause

    echo "Lesson 5 Complete! You can now check and troubleshoot network connections."
}

while true; do
    echo
    echo "Select a lesson to begin:"
    echo "1. Basic Commands"
    echo "2. File Operations"
    echo "3. Permissions"
    echo "4. Processes and Monitoring"
    echo "5. Networking"
    echo "6. Exit"
    echo

    read -p "Enter your choice: " choice
    case $choice in
        1) lesson1 ;;
        2) lesson2 ;;
        3) lesson3 ;;
        4) lesson4 ;;
        5) lesson5 ;;
        6) 
            echo "Thank you for using the Ubuntu Terminal Learning Program! Goodbye!"
            exit
            ;;
        *) echo "Invalid choice. Please try again." ;;
    esac
done
