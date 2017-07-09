#!/usr/bin/ruby

#This script returns the current apss in a users dock.
#only returns persistant apps
#run as sudo to return results for other users

require 'CFPropertyList'
require 'etc'

CURRENTUSER=Etc.getlogin

#=======================================================================
#list the aspps in a users dock
def dock_apps(user = CURRENTUSER)

	plist = CFPropertyList::List.new(:file => "/Users/#{user}/Library/Preferences/com.apple.dock.plist")
	results=CFPropertyList.native_types(plist.value)
	apps=[]
	for key, value in results['persistent-apps']
		for key, value in key
			if value.class == Hash
				for x, y in value
					if x == "file-label"
						apps.push(y)
					end
				end
			end
		end
	end
	return apps
end

#=======================================================================
#default is current users dock
puts dock_apps

#=======================================================================
#to run for specfic users, switch out name. needs to be run as sudo
#to return results for other users

#puts dock_apps("nscott")