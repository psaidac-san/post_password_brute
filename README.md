# post_password_brute

first argument is the URL of the login page
second argument is the password wordlist

the script performs a POST curl with parameters "username=admin" and "password=<WORDLIST_ENTRY>"
it then counts the occurrences of a given significant word for a failed login, which in this case is "incorrect"

the output is stored on a file called curl_brute.out in the current dir
the display output shows a counter
