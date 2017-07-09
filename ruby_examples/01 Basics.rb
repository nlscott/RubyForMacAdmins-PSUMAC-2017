#!/usr/bin/ruby

#==============================================================
# STRINGS
# a string in ruby is simply characters enclosed by qoutes
# https://www.tutorialspoint.com/ruby/ruby_strings.htm
#==============================================================

# single qoutes
puts 'Hello Penn State'

# double qoutes
puts "Hello Mac Admins"

# convert all text to lowercase
puts "Hello Mac Admins".downcase

# convert all text to uppercase
puts "Hello Mac Admins".upcase

# removes the record separator ($/), usually \n, from the end of a string. If no record separator exists, does nothing.
puts "Hello Mac Admins".chomp

# removes the last character in str
puts "Hello Mac Admins".chop

# returns the length of string
puts "Hello Mac Admins".length

# returns a new string with the characters from str in reverse order.
puts "Hello Mac Admins".reverse

# Performs the substitutions of Strings
puts "Hello Windows Admins".gsub!("Windows", "Mac")

# returns true if str is empty (has a zero length).
puts "Hello Mac Admins".empty?

# returns class .. verifies it's a string
puts "Hello Mac Admins".class

# print a new line
puts "\n"

# returns true if str is empty (has a zero length).
puts 3 #3 is represented as a Integer
puts 3.class #Integer is an object of Fixnum
puts 3.to_s # converting Integer to string
puts 3.to_s.class #print class to verify 3 is no longer an Integer, but a string
puts 3.to_s == "3" # verify that to._s is the same as using quotes

# print a new line
puts "\n"

# Comparing two strings for equality
puts "Hello" == "Hello"
puts "Mac" == "mac"
puts "Mac" == "Windows"

#puts "Hello".methods
puts String.instance_methods
