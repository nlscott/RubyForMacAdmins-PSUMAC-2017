#!/usr/bin/ruby

#This scripts checks the group membership of each user on the machine to 
#to see if they are in the local admin group

def local_admins
	list_of_users_tocheck = []
	for x in Dir.entries("/Users")
		if !x.start_with?(".")
			list_of_users_tocheck.push(x)
		end
	end

	localadmins = []
	for x in list_of_users_tocheck
		if `dsmemberutil checkmembership -U #{x} -G admin 2>/dev/null`.chomp == "user is a member of the group"
		localadmins.push(x)
		end
	end
	puts "Local Admins:"
	return localadmins
end


def listoflocaladmins
	listoflocaladmins =`dscacheutil -q group -a name admin`.split(":")
	listoflocaladmins=listoflocaladmins[4].strip.split(" ")
	puts "Local Admins:"
	return listoflocaladmins
end

puts listoflocaladmins