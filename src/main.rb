# require_relative "src/menu.rb"
require_relative "menu.rb"
# require_relative "src/list.rb"
require_relative "list.rb"

def slowtype
    sleep(rand(0.2..1))
end

puts "Welcome to Surf Saver" 
slowtype
puts "It's designed to encourage you to keep surfing frequently" 
slowtype
puts "Challenge your friends and get the hightest score" 
slowtype
puts "Scores are calculated on a variety of factors" 
slowtype
puts "Including how many minutes you surf for, how difficult the surf was and what day of the week it is. Bonus points applied to weekday surfs because they require a little extra effort!"
slowtype
puts "You can export your surf session data by selecting export in the main menu"


# Test data not used
listArray = [
    {name: "name1", id: 1, difficulty: "easy", location: "woonona", date: "date1", rating: 8, minutes: 100},
    {name: "name2", id: 2, difficulty: "easy", location: "bulli", date: "date2", rating: 7, minutes: 50},
    {name: "name3", id: 3, difficulty: "easy", location: "corimal", date: "date3", rating: 6, minutes: 200}
]


# Initiates the application
ui = UserInterface.new
list = List.new()

ui.mainMenu(list)