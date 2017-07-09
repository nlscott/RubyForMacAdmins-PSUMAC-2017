#!/usr/bin/ruby

#creating a method to report how many users installed on a machine
def list_of_users
	users=[]
	for username in Dir.entries("/Users")
		if !username.start_with?(".")
			users.push(username)
		end
	end
	return users
end

puts "Total Users: #{list_of_users.length}"
puts list_of_users
