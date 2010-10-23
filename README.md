# MkPasswd

This is the first Ruby script I've written.  
I tried to use class definition of ruby,  
through creating password generator.

## Usage
	
### Simplest example

	mp = MkPasswd.new
	puts mp.generate

### Example with option

mp = MkPasswd.new
puts mp.generate({
	"length" => 32, # Length of password
	"useNumeric" => true, # use numeric character or not
	"useSymbol" => true, # 
})

See "demo.rb"

## Options

###length

Length of password.

### useNumeric

Use numeric character or not

### useSymbol

Use symbol character or not

### useUpperCase

Use upper case of alphabet or not

## Note

This script doesn't use the character of "0" of number,  
but use "o/O" of alphabet.
