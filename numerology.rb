	def get_birthdate
		puts "enter your birthdate as MMDDYYYY"
		birthdate = gets
	end


	def numerology(nn)
		nn= nn[0].to_i + nn[1].to_i + nn[2].to_i + nn[3].to_i + nn[4].to_i + nn[5].to_i + nn[6].to_i + nn[7].to_i
		nn = nn.to_s
		nn = nn[0].to_i + nn[1].to_i

		if nn > 9
			nn = nn.to_s
			nn = nn[0].to_i + nn[1].to_i
			nn = nn.to_s
		else 
			nn = nn.to_s	
		end
	end	


	def numerology_message
		number = get_birthdate
		final_number = numerology(number)
		case final_number
			when '1'
				puts "your numerology number is 1"
			when '2'
				puts "your numerology number is 2"
			when '3'
				puts "your numerology number is 3"
			when '4'
				puts "your numerology number is 4"
			when '5'
				puts "your numerology number is 5"
			when '6'
				puts "your numerology number is 6"
			when '7'
				puts "your numerology number is 7"
			when '8'
				puts "your numerology number is 8"	
			when '9'
				puts "your numerology number is 9"
			else puts "error"
		end
	end

	numerology_message




