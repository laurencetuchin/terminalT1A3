require 'tty-font'
font = TTY::Font.new(:doom)

require 'colorize'
require_relative 'surfquote'

surf_quotes = ['If in doubt, paddle out - Nat Young', 'Out of the water, I am nothing. - Duke Kahanamoku', 'I think when a surfer becomes a surfer, its almost like an obligation to be an environmentalist at the same time - Kelly Slater', 'You can take a surfer out of the surf, but you can not take surf out of the surfer - Bob McTavish', 'Live to surf, surf to live - Mike Doyle', 'When the surfs up, your life is too - Wilhelm Sverdvik']

name = ""


puts "Welcome to" 
intro = puts font.write("Surf Saver")

# Prints random surf quote to start
randomSurfQuote(surf_quotes)

def welcome
    puts "Please enter your name"
    name = gets.chomp
    system 'clear'
    puts "Welcome to Surf Saver #{name}".colorize(:red)

end



welcome()
puts "Press y to continue"

continue = gets.chomp

if continue == "y"
    puts "You have selected continue"
elsif continue != "y"
    puts "Please select y to continue"
    puts "Or enter exit to exit the program"
    continue = gets.chomp
end


