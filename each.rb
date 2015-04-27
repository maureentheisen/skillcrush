
fizzbuzz = *(1..100)

fizzbuzz.each do |number|
	number = number.to_i
	if (number%5==0) && (number%3==0)
			puts "FizzBuzz"
	elsif number%5 == 0
			puts "Buzz"
	elsif number%3 == 0
			puts "fizz"
	else
		number = number.to_s
		puts number
	end
end
