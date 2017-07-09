#!/usr/bin/ruby


# Overview of loops or "Flow Control", in ruby

#=========================================================
# IF STATEMENTS
# The if keyword is used to check if an expression is true. 
# If it is true, a statement is then executed

if File.exists?("/Applications")
	puts "Applications Folder Exists"
end

#=========================================================
# IF/ELSE STATEMENTS

madmin = "macadmin"

if "macadmin" == madmin
	puts "You're a Mac Admin"	
end

#=========================================================
# IF/ELSIF/ELSE

if 3 > 4
	puts "You shouldn't see this"
elsif 3 < 4
	puts "3 is not greater than 4"
else
	puts "Ooops ... something went wrong"
end

#=========================================================
# WHILE STATEMENT
# The while statement is a control flow statement that allows code 
# to be executed repeatedly based on a given boolean condition
goal = 0

while goal < 10  do
   goal = goal + 1
end

puts "The goal equals #{goal}"

#=========================================================
# UNTIL STATEMENT
# The until is a control flow statement which executes code while 
# the condition is false. The loop stops when the condition is true.
hours_left = 4

until hours_left == 0
    
    if hours_left == 1
        puts "There is #{hours_left} hour left"
    else
        puts "There are #{hours_left} hours left"
    end

    hours_left = hours_left - 1
end

#=========================================================
# FOR STATEMENT
# print out every time in the Applications folder

 for x in Dir.entries("/Applications")
 	puts x
 end

#=========================================================
# EACH METHOD
# print each item in the users folder. same concept as above, just
# a different way to do it

 Dir.entries("/Users").each do |x| 
    puts x
end


#=========================================================
# CASE STATEMENT
# best useds when you need to evaluate more conitions than  a simple
# if/elsif/else statement

os = "10.12"

case os
    when "10.9"
        puts "You're on Mavericks"
    when "10.10" 
        puts "You're on Yosemite"
    when "10.11" 
        puts "You're on El Capitan"
    when "10.12" 
        puts "You're on Sierra"
    else
        puts "Unknown"
end