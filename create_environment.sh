#!/bin/bash

# Prompt the user for their name
echo "Enter your name"
read user_Name

# Define the main directory name
dir_Name="submission_reminder_${user_Name}"

# Create the main application directory
mkdir -p "$dir_Name"

# Create required subdirectories
mkdir -p "$dir_Name/App"
mkdir -p "$dir_Name/modules"
mkdir -p "$dir_Name/assets"
mkdir -p "$dir_Name/config"

# Create required files
touch "$dir_Name/App/reminder.sh"
touch "$dir_Name/modules/functions.sh"
touch "$dir_Name/assets/submission.txt"
touch "$dir_Name/config/config.env"
touch "$dir_Name/startup.sh"

# Adding basic content to files 
echo "#!/bin/bash" > "$dir_Name/App/reminder.sh"
echo "#!/bin/bash" > "$dir_Name/modules/functions.sh"
echo "#!/bin/bash" > "$dir_Name/startup.sh"

# Example submission data
echo "Student, Assignment, Submission status" > "$dir_Name/assets/submission.txt"
echo "Chinemerem, Shell Navigation, not submitted" >> "$dir_Name/assets/submission.txt"
echo "Chiagoziem, Git, submitted" >> "$dir_Name/assets/submission.txt"
echo "Divine, Shell Navigation, not submitted" >> "$dir_Name/assets/submission.txt"
echo "Anissa, Shell Basics, submitted" >> "$dir_Name/assets/submission.txt"
echo "David,History, Not Submitted" >> "$dir_Name/assets/submission.txt"
echo "Eve,Geography, Submitted" >> "$dir_Name/assets/submission.txt"
echo "Frank,French, Submitted" >> "$dir_Name/assets/submission.txt"
echo "Grace,Biology, Not Submitted" >> "$dir_Name/assets/submission.txt"
echo "Hank,shell scripting, Submitted" >> "$dir_Name/assets/submission.txt"

# Make scripts executable
chmod +x "$dir_Name/App/reminder.sh"
chmod +x "$dir_Name/modules/functions.sh"
chmod +x "$dir_Name/startup.sh"
chmod +x "$dir_Name/config/config.env"
chmod +x "$dir_Name/assets/submission.txt"

echo "Environment setup complete."
