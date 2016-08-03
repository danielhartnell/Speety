require "Speety/version"

module Speety
  puts "Welcome to Speety, version: #{VERSION}."
  server = TCPServer.new 8080
  loop do
    client = server.accept
    client.puts "Hello, world!"
    client.puts "The time is now #{Time.now}"
    client.close
  end
end
