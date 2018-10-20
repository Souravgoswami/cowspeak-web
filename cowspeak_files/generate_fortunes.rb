#!/usr/bin/env ruby

require 'net/http'

begin
	file = File.open('fortunes.data', 'w+')
	data = Net::HTTP.get(URI('https://raw.githubusercontent.com/bmc/fortunes/master/fortunes')).chomp
	unless data == '404: Not Found'
		file.puts data
		file.close
		warn 'The fortunes file has be updated, and rewritten'
	else
		warn 'Uh oh! The website is unreachable:
			404: Not Found.
			This script will be updated soon.'
		file.close
	end

rescue
	warn 'No internet connection!
		Tell me what to do now:
			1. Try again?
			2. Exit.
			(Default: Exit)'
	case gets.to_i
		when 1 then retry
		when 2 then abort
		default abort
	end
end
