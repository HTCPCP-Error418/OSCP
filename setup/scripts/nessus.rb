#!/usr/bin/env ruby

=begin
	This script will take a command line argument (start | stop) and use it to either start or
	stop the nessus service, then print the process IDs (if applicable)
=end

case ARGV[0]
	when "start"
		puts ""
		puts "starting nessus..."
		puts ""

		run = `sudo /etc/init.d/nessusd 'start'`
		ps = `sudo ps -e | grep nessus`

		if ps == ""
			puts "error starting nessus..."
		else
			puts "nessus started..."
			puts ""
			puts "---------------"
			puts "#{ps}"
			puts "---------------"
			puts ""
			`chromium https://localhost:8834`

		end

	when "stop"
		puts ""
		puts "stopping nessus..."
		puts ""

		run = `sudo /etc/init.d/nessusd 'stop'`
		ps = `ps -e | grep nessus`

		if ps == ""
			puts "nessus stopped..."
		else
			puts "error stopping nessus!"
			puts ""
			puts "---------------"
			puts "#{ps}"
			puts "---------------"
		end
	else
		puts "usage: "
		puts ""
		puts "nessus.rb start => start nessus service"
		puts "nessus.rb stop => stop nessus service"

	puts ""
end
