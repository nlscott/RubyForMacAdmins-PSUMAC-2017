#!/usr/bin/ruby

#get os version
os_check=`sw_vers | grep ProductVersion`.split(" ")

puts os_check
puts "\n"

puts os_check.class
puts "\n"

puts os_check[1]
puts "\n"


#get serial bumber
serial_number=`system_profiler SPHardwareDataType | awk '/Serial/ {print $4}’'`

puts serial_number
