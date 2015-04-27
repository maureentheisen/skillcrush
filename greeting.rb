def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour
end

def get_name
	puts "what is your name"
	name = gets
end

def greeting
	current_hour = determine_current_hour
	x = get_name.chomp
	if(current_hour > 3 && current_hour < 12)
		time = "morning"
	elsif(current_hour > 12 && current_hour < 18)
		time = "afternoon"
	elsif(current_hour > 18 || current_hour < 2)
		time = "evening"
	end
	puts "Good #{time}, #{x.capitalize}!"
end

greeting