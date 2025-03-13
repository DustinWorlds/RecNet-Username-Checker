# Rec Room Username Availability Checker
A Python script that checks the availability of usernames on Rec Room using the official API. The script can generate and test multiple usernames automatically.

# Features
Username Validation: Checks if a username is already claimed or available.
Automated Generation: Generates usernames using lowercase letters up to a specified length.
Custom Input: Allows users to check specific usernames.
API Integration: Uses Rec Room's API to verify username status.
# Requirements
Python 3.x
requests library (pip install requests)
# Usage
Edit the script to define:
max_length and min_length for generated usernames.
usernames_to_check for specific usernames.
Run the script:
sh
Code kopieren
python script.py
The script will output whether each username is claimed or available.

## Username Options

![alt text](https://github.com/DustinWorlds/RecNet-Username-Checker/blob/main/Username%20options.png)

## Usernames Claimed or Unclaimed

![alt text](https://github.com/DustinWorlds/RecNet-Username-Checker/blob/main/Usernames.png)
