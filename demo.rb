#!/usr/bin/ruby

require "mkpasswd"
mp = MkPasswd.new

puts

# simple example
puts "--- default option ---"
8.times{
	puts mp.generate
}
puts

# example with option
puts "--- example with option ---"
8.times{
	puts mp.generate({
		"length" => 32,
		"useNumeric" => true,
		"useSymbol" => false,
		"useUpperCase" => false
	})
}
puts