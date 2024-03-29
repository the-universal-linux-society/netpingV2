require 'socket'
require 'net/smtp'

# SMTP Configuration (replace with your email settings)
SMTP_SERVER = 'smtp.example.com'
SMTP_PORT = 587
SMTP_DOMAIN = 'example.com'
SMTP_USERNAME = 'your_username'
SMTP_PASSWORD = 'your_password'
EMAIL_FROM = 'your_email@example.com'
EMAIL_TO = 'recipient@example.com'

def ping(host, count = 4)
  puts "Pinging #{host}..."

  result = `ping -c #{count} #{host}`
  puts result
  
  # Check if ping was successful
  success = result.include?("0% packet loss")
  return success
end

def send_email(subject, body)
  smtp = Net::SMTP.new(SMTP_SERVER, SMTP_PORT)
  smtp.enable_starttls
  
  smtp.start(SMTP_DOMAIN, SMTP_USERNAME, SMTP_PASSWORD, :login) do
    smtp.send_message(body, EMAIL_FROM, EMAIL_TO)
  end
end

def ping_every_hour(host, count)
  loop do
    success = ping(host, count)
    
    unless success
      subject = "Ping to #{host} failed!"
      body = "The ping to #{host} failed to establish a connection."
      send_email(subject, body)
    end
    
    puts "Next ping will be in 1 hour."
    sleep(3600) # Sleep for 1 hour (3600 seconds)
  end
end

# Example usage:
ping_every_hour('google.com', 4)
