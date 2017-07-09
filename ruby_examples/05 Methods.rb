#!/usr/bin/ruby

#===========================================================
# Method
#methods are used to bundle one or more repeatable statements
#methods are very similar to functions in any other languages
#should begin with a lowercase letter
#should be defined before calling them
#===========================================================

#simple example to print a string
puts "Hello MacAdmins"
puts "\n"

#simple method that does the same as the above
def psumac
    puts "Hello MacAdmins"
end

#to run a method simple call the name
psumac
puts "\n"

#another simple method example
def add
	puts 3 + 3
end

add
puts "\n"

#methods can also take arguments
def double(x)
	puts x * 2
end

double(5)
puts "\n"

#methods with 2 parameters
def two_parametes(var1, var2)
	puts var1
	puts var2
end

two_parametes(20, "hello") #choose any two random objects
puts "\n"

#methods with 2 parameters but we set defaults for each, in case the use only supplies 1
def default_parametes(var1="Hello", var2="Goodbye")
	puts var1
	puts var2
end

default_parametes("Hi")
puts "\n"

#methods with return instead of puts. return .. prints out the last statment that is executed
def food
	return "pizza"
end

puts food #since there was no puts in the above method, we must run 'food' with puts in front
puts "\n"


#A bit about scope.var is a variable outside the method and trying to access it
#inside the method will cause an error like, undefined local variable or method `var' for main:Object (NameError)
var = var="I can't be access inside a method"

def scope
	return var
end

#to generate the above error, uncomment the line below, so it read: puts scope
#puts scope
puts "\n"


#var2 is a global variable, and now it can be accessed inside the method
$var2 = "Now you can access me from inside the method"

def scope_two
	return $var2
end

puts $var2
puts "\n"

#you can also put loops, conditional statements or iterators inside methods
def list_of_apps
	Dir.entries("/Applications").each do |app|
		if !app.start_with?(".")
			puts app
		end
	end
end

list_of_apps
