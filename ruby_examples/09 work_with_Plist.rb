#!/usr/bin/ruby


require 'cfpropertylist'

# => loads data
plist = CFPropertyList::List.new(:file => "/Library/Preferences/com.apple.alf.plist")
firewall = CFPropertyList.native_types(plist.value)

# => print hash vaule
puts firewall['globalstate']
puts firewall['globalstate'].class

# => modify hash value
#firewall['globalstate'] = 0

# => print to show change
#puts firewall['globalstate']

# => save data back to file
#plist.value = CFPropertyList.guess(firewall)
#plist.save("/Library/Preferences/com.apple.alf.plist", CFPropertyList::List::FORMAT_BINARY)
