require 'rubygems'
require 'twilio-ruby'
require 'nokogiri'
require 'open-uri'


def twilio_message(body)
	account_sid = "ACc98600539f3bade7ef392766c10275b0"
	auth_token = "0f970caad7883ffdaec63b2086f40722"

	@client = Twilio::REST::Client.new(account_sid, auth_token)

	message = @client.account.messages.create(
		:from => "+19198132628",
		:to => "+19195991398",
		:body =>  body
	)

	puts message.to
end

puts "Welcome to a Magic 8-Ball game 
Enter your Question, please: "
message_body = gets.chomp + " -"

answers = Nokogiri::HTML(open("http://en.wikipedia.org/wiki/Magic_8-Ball#Possible_answers")).xpath('//ol//li//span').children
a = Array.new
(0..19).each do |i|
	a << answers[i]
end


message_answer = a[rand(0..19)]
message_body<<message_answer
#puts "SMS: #{message_body}"

twilio_message(message_body)
