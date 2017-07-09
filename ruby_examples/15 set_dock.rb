#!/usr/bin/ruby

#This script expects to find dockutil installed, it will exit if it's not found

DOCKUTIL="/usr/local/bin/dockutil"
APPS="/Applications"

#list of apps we want to use to set the dock for all users
@add_app=["Launchpad.app","App Store.app", "Safari.app", "Google Chrome.app","Calendar.app", 
	"Notes.app", "Reminders.app", "Photos.app", "Messages.app", "iTunes.app",
	"Preview.app", "Microsoft Excel.app", "Microsoft PowerPoint.app", "Microsoft Word.app"]

#list of folders we want to add to every dock
@folder='~/Downloads'


#==========================================================
#methods

#checking to see if dockutil is installed
def check_for_dockutil
	if !File.exist?("/usr/local/bin/dockutil")
		abort "Dockutil is not installed"
	end
end

#if dockutil was found, use the apps in @add_app to create a dock for all users accounts
#already on the machine

def set_user_dock
	removeallapps = "#{DOCKUTIL} --remove all --allhomes --no-restart"
	system(removeallapps)

	@add_app.each do |appname|
		addapp="#{DOCKUTIL} --add '#{APPS}/#{appname}' --allhomes --no-restart"
		system(addapp)
	end

	if !@folder.empty?
		restart="#{DOCKUTIL} --add '#{@folder}' --view grid --display folder --allhomes --no-restart"
		system(restart)
	end
end

#if dockutil was found, use the apps in @add_app to create a dock in User Template for
#all future users

def set_user_template
	removeallapps = "#{DOCKUTIL} --remove all --no-restart '/System/Library/User Template/English.lproj'"
	system(removeallapps)

	@add_app.each do |appname|
		addapp="#{DOCKUTIL} --add '#{APPS}/#{appname}' --no-restart '/System/Library/User Template/English.lproj'"
		system(addapp)
	end
end

#run commands
check_for_dockutil
set_user_dock
set_user_template
