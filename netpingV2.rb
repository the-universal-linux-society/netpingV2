#! /bin/ruby
require 'socket'
def ping(host, count = 4)
  puts "Pinging #{host}..."
  result = `ping -c #{count} #{host}`
  puts result
end
def ping_every_hour(host, count)
  loop do
    ping(host, count)
    puts "Next ping will be in 1 hour."
    sleep(3600) # Sleep for 1 hour (3600 seconds)
  end
end
# Example usage:
ping_every_hour('google.com', 4)

