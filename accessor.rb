class Cat
	attr_accessor :name, :mood

end

fuzzy = Cat.new
fuzzy.name = "fuzzy"
fuzzy.mood = "shy"
cat_name = fuzzy.name
cat_mood = fuzzy.mood

puts "#{cat_name} is feeling #{cat_mood}"