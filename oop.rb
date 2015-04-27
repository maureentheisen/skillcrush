class Theisen_DuVall_Family

	attr_accessor :name, :mood
end



class Cat < Theisen_DuVall_Family
	 def likes_to_say
	 	return "meow"
	 end
end

class Person < Theisen_DuVall_Family
	def likes_to_eat
		return "pizza"
	end
end



fuzzy = Cat.new
fuzzy.name = "fuzzy"
fuzzy.mood = "silly"
cat_name = fuzzy.name
cat_mood = fuzzy.mood
penny = Person.new
penny.name = "Penny"
penny.mood = "happy"
penny_name = penny.name
penny_mood = penny.mood

puts "#{penny_name} is in a #{penny_mood} mood because she is eating #{penny.likes_to_eat}, while #{cat_name} says #{fuzzy.likes_to_say} because she is in a #{cat_mood} mood. "


puts fuzzy.inspect
puts penny.inspect