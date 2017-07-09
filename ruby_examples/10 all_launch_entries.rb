#!/usr/bin/ruby

#runs a basic report on a laptop of the battery health


#==========================================================
#system folders

def system_launchagents
	sys_launchagents = "/Library/LaunchAgents"

	Dir.entries(sys_launchagents).each do |x|
		if !x.start_with?(".")
			return x
		end
	end
end

def system_launchdaemons
	sys_launchagents = "/Library/LaunchDaemons"

	Dir.entries(sys_launchagents).each do |x|
		if !x.start_with?(".")
			return x
		end
	end
end


#==========================================================
#Get list of all users
@all_users = []

Dir.entries("/Users").each do |x|
	if !x.start_with?(".")
		@all_users.push(x)
	end
end
@all_users.delete("Guest")
@all_users.delete("Shared")

#loop through users and print launchagenst and launchdaemons
def user_launchagents
	for x in @all_users
		if File.exist?("/Users/#{x}/Library/LaunchAgents")
			puts "#{x} LaunchAgents: "
			for x in Dir.entries("/Users/#{x}/Library/LaunchAgents")
				if !x.start_with?(".")
					puts x
				end
			end
		else
			puts "#{x} LaunchAgents does not exist "
		end
	end
end

def user_launchdaemons
	for x in @all_users
		if File.exist?("/Users/#{x}/Library/LaunchDaemons")
			puts "#{x} LaunchDaemons: "
			for x in Dir.entries("/Users/#{x}/Library/LaunchDaemons")
				if !x.start_with?(".")
					puts x
				end
			end
		else
			puts "#{x} LaunchDaemons does not exist"

		end
	end
end

#==========================================================
#REPORTING
puts "System LaunchAgents: "
puts system_launchagents
puts "\n"

puts "System LaunchDaemons: "
puts system_launchdaemons
puts "\n"

user_launchagents
puts "\n"
user_launchdaemons
