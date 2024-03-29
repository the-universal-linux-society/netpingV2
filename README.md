# netpingV2
netping script, rewritten in ruby with additional settings.

This Ruby script provides a simple utility to ping a specified host every hour. 

It uses the ping command-line utility available on most Unix-like systems to send ICMP echo requests to the specified host and displays the result.

### Features: 
1. Ping Host Every Hour: The script pings a specified host at regular intervals, with the default interval set to every hour.
2. Customizable Parameters: You can specify the host name and the count of pings to send as arguments to the script.
3. Simple and Lightweight: The script is written in Ruby and relies on system-level utilities, making it lightweight and easy to use.

### Usage: 

To use the script, simply run it with Ruby and specify the host name and optional count of pings:
>ruby netpingV2.rb <host> [count]

For example:

>ruby netpingV2.rb google.com 4

This will ping 'google.com' four times by default.

### Requirements: 

1. Ruby (version 2.0 or higher)
2. Unix-like operating system (Linux, macOS, etc.) with the ping utility available

### Notes: 
If you encounter any issues, let me know asap.


