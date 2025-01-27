import requests
import string

def check_username(username):
    url = f"https://apim.rec.net/accounts/account?username={username}"
    response = requests.get(url)
    
    if response.status_code == 200:
        return True  
    elif response.status_code == 404:
        return False  
    else:
        print(f"Request Error: {username}: {response.status_code}")
        return None  

def generate_usernames(current, max_length):
    if len(current) == max_length:
        return  

    letters = string.ascii_lowercase  
    for letter in letters:
        new_username = current + letter
        yield new_username  
        yield from generate_usernames(new_username, max_length)

def main():
    max_length = 4 # Max Name Length
    min_length = 4 # Min Name Length
    usernames_to_check = ["Example1", "Example2"] # Pecific Usernames

    
    for length in range(min_length, max_length + 1):
        for username in generate_usernames("", length):
            usernames_to_check.append(username)

    for username in usernames_to_check:
        exists = check_username(username)
        if exists is True:
            print(f"Username: {username} is Claimed.")
        elif exists is False:
            print(f"Username: {username} is Valid.")
        else:
            print(f"Error for {username}.")

if __name__ == "__main__":
    main()
