#!/usr/bin/ruby

#===========================================================
# Array's
# Arrays are ordered, integer-indexed collections of any object.
#===========================================================


#===========================================================
#list of oses, arrays can contains a mix of strings, intergers, or other objects
os = ["Panther","Tiger", "Leopard", "Snow Leopard"]

puts os #print out items in array
puts os.length #print how many total items in array
puts "\n"

#===========================================================
# loop through each item and print it, or you could perfrom 
# any action you wanted
os.each do |x|
    puts x
end
puts "\n"

#===========================================================
#add object to array
os.push("Mountian Lion") #add to os array
puts os #print the resutls to show Mountian lion is included
puts os.length # print total number of items
puts "\n" #line break

#===========================================================
#delete object from an array
os.delete("Mountian Lion") #delete from array
puts os #print so show Mountian Lion was removed
puts os.length #print total number of items
puts "\n" #line break

#===========================================================
#print first item
puts os[0] #print first item in array
puts os[1] #print second item in array
puts os.first #another way to print the first item
puts os.last #print the last item
puts os.index("Sierra") # print what number in the index a certian item is located
puts "\n"

#===========================================================
#removes duplicats and only prints unique objects in array
colors=["Blue", "Yellow", "Red", "Blue"]

puts colors.length #show how many items in colors array
puts colors #print out items
puts "\n" #line break
puts colors.uniq.length #print how many unique items in colors array
puts colors.uniq #print unique items
puts "\n"

#prints items in array in alphabetical order
puts colors.sort
puts "\n"

#prints true or false if item is in array
puts colors.include?("Red")



