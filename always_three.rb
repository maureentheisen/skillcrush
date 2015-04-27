def always_three(x)
	x = (((((x.to_i + 5) * 2 )- 4) / 2) - x.to_i).to_s
	puts "your final number is " + x
end

puts "Enter a number"
number = gets
always_three(number)
