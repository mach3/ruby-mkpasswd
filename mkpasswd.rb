#!/usr/bin/ruby

class MkPasswd
	def initialize
		@defaultOption = {
			'length' => 8,
			'useNumeric' => true,
			'useUpperCase' => true,
			'useSymbol' => true
		}
		@numeric = '123456789'
		@alphabet = 'abcdefghijklmnopqrstuvwxyz'
		@symbol = '#$-=?@[]_'
	end
	def generate ( option = {} )
		@defaultOption.each { |key,value|
			if option[key] === nil then option[key] = value end
		}
		map = @alphabet + 
			(( option["useNumeric"] ) ? @numeric : "" ) + 
			(( option["useUpperCase"] ) ? @alphabet.upcase : "" ) +
			(( option["useSymbol"] ) ? @symbol : "" )
		map = map.split("")
		result = ""
		option["length"].times {
			result += map[ rand( map.length ) ]
		}
		result
	end
end