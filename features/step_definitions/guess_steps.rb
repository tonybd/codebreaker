Given(/^the secret code is "(.*?)"$/) do |secret|
	game.start(secret)
end

When(/^I guess "(.*?)"$/) do |guess|
	game.guess(guess)
end

Then(/^the mark should be "(.*?)"$/) do |mark|
	output.messages.should include(mark)
end

def game
	@game ||= Codebreaker::Game.new(output)
end
