#!/usr/bin/ruby

#Gets a list of applicatoins Installed by the user after deployment
#Tested on 10.11 & 10.12

base_apps = [ "App Store.app", "Automator.app", "Calculator.app",
"Calendar.app", "Chess.app", "Contacts.app", "Dashboard.app",
"Dictionary.app", "DVD Player.app", "FaceTime.app", "Font Book.app",
"Game Center.app", "Google Chrome.app", "iBooks.app", "Image Capture.app",
"iTunes.app", "Launchpad.app", "Mail.app", "Maps.app", "Messages.app",
"Mission Control.app", "Notes.app", "Photo Booth.app", "Photos.app",
"Preview.app", "QuickTime Player.app", "Reminders.app", "Safari.app",
"Stickies.app", "System Preferences.app", "TextEdit.app", "Time Machine.app",
"Utilities", "VLC.app" ]

users_apps = []


#====================================================================
#add apps installed by user to user_apps

Dir.entries("/Applications").each do | appname |
	if !appname.start_with?(".")
		if !base_apps.include?(appname)
			users_apps.push(appname)
		end
	end
end

puts "Number of Apps Installed: #{users_apps.length}"
puts users_apps
