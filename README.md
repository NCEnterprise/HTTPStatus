# HTTPStatus

<p align="center">
<img src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhqgD8itr5TeyY1NWYnpYmXufsFaA99Q9aw5uX3bVAU025x90rWHEC2QG6E6i0EOoFbxKR688cDutW3ReXsdoVuO_L8DDqT44hkOIlV7u9o4IHX6I_BBPmOFpwEm71M58Q4Va6lQ0hS-45QG_AXwAxdeYUYJE_nLlPNQrk1XZWIKB-fniI3XF0TQgCjkFE/s1600/Screenshot%202023-09-16%20213931.png" />
</p>

To create a Ruby script that checks the status codes of URLs listed in a file, you can use the Net::HTTP library for making HTTP requests.

- It defines a `check_status_code` function that takes a URL as an input, makes an HTTP request to that URL using `Net::HTTP`, and checks the status code of the response.
- The script expects one command-line argument, which is the name of the input file containing a list of URLs to check.
- It reads each line from the input file, trims any leading/trailing whitespace using `chomp`, and calls `check_status_code` to check the status code for each URL.
- It prints the result for each URL, indicating whether the status code is "OK" (200) or "Not OK" (anything other than 200), or if there's an error.

Argument:
`ruby status_checker.rb input_urls.txt`

Replace `input_urls.txt` with the name of your input file containing the list of URLs to check. The script will read the URLs from the file and provide the status codes for each URL.
