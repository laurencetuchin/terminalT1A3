# require_relative 'surfer_update'
require 'tty-prompt'
prompt = TTY::Prompt.new

puts "Welcome to Surf Saver"
puts "It's designed to encourage you to keep surfing frequently"
puts "Challenge your friends and get the hightest score"
puts "Scores are calculated on a variety of factors"
puts "Including how many minutes you surf for, how difficult the surf was and what day of the week it is. Bonus points applied to weekday surfs because they require a little extra effort!"



listArray = [
    {name: "name1", id: 1, difficulty: "easy", location: "woonona", date: "date1", rating: 8, minutes: 100},
    {name: "name2", id: 2, difficulty: "easy", location: "bulli", date: "date2", rating: 7, minutes: 50},
    {name: "name3", id: 3, difficulty: "easy", location: "corimal", date: "date3", rating: 6, minutes: 200}
]




require_relative 'menu.rb'
require_relative 'list.rb'

ui = UserInterface.new
list = List.new()

ui.main_menu(list)