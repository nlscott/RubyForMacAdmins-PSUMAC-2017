#!/usr/bin/ruby

#===========================================================
# Hash
# A Hash is a collection of key-value pairs
# They are not ordered like arrays but can be accessed by keys or values
#===========================================================

#example of a ruby hash
oses ={
	"10.12" => "Sierra",
	"10.11" => "El Capitan",
	"10.10" => "Yosemite",
	"10.9" => "Mavericks"}

#print each key value pair in a hash
for key, value in oses
	puts key, value
end
puts "\n"
for key, value in oses
	puts key, value
end

#print vaule for a key
puts oses["10.9"] #returns Mavericks
puts "\n"

#print true or false if the hash contains a specfic key
puts oses.has_key? "10.9" #returns true
puts "\n"

#print true or false if the has contains a specfic value
puts oses.has_value? "Mountian Lion"
puts "\n"

#add item to hash
oses["10.7"] = "Lion"

#delete item from hash
oses.delete("10.7")

#print how many items are in the hash
puts oses.length
puts "\n"

#check if the has has items or is empty
puts oses.empty?
puts "\n"