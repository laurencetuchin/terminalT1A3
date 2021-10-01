require_relative 'list'
# require_relative 'surfquote'
require 'tty-font'

surf_quotes = ['If in doubt, paddle out - Nat Young', 'Out of the water, I am nothing. - Duke Kahanamoku', 'I think when a surfer becomes a surfer, its almost like an obligation to be an environmentalist at the same time - Kelly Slater', 'You can take a surfer out of the surf, but you can not take surf out of the surfer - Bob McTavish', 'Live to surf, surf to live - Mike Doyle', 'When the surfs up, your life is too - Wilhelm Sverdvik']


class UserInterface
    attr_accessor :surf_quotes
    def initialize
        @surf_quotes = surf_quotes
    end

    def mainMenu(listObjectArg)
        @list = listObjectArg

        menuLoop = true

        while menuLoop == true

                system("clear")
                
                
                
                puts "Welcome to" 
                font = TTY::Font.new(:doom)
                intro = puts font.write("Surf Saver")
                
                # Prints random surf quote to start
                
                # Get user input
                # Send user through menu
                # Get user to input option
                
                @list.print()
                puts "What would you like to do?"

        end
            
    end
     
    def randomSurfQuote
        surf_quotes = ['If in doubt, paddle out - Nat Young', 'Out of the water, I am nothing. - Duke Kahanamoku', 'I think when a surfer becomes a surfer, its almost like an obligation to be an environmentalist at the same time - Kelly Slater', 'You can take a surfer out of the surf, but you can not take surf out of the surfer - Bob McTavish', 'Live to surf, surf to live - Mike Doyle', 'When the surfs up, your life is too - Wilhelm Sverdvik']   
        # @surf_quotes = surf_quotes
        random = surf_quotes.sample
        puts random
    end
    
    # randomSurfQuote()
        
    def welcome
            puts "Please enter your name"
            name = gets.chomp
            system 'clear'
            puts "Welcome to Surf Saver #{name}".colorize(:red)
            
    end

    # welcome()
        
    def add_task()
        system 'clear'
        # Gets user input
        puts "Write a name for your surf session below"
        name = gets.chomp
        puts "Write a difficulty (easy, medium, hard)"
        difficulty = gets.chomp
        puts "How many minutes did you surf for?"
        minutes = gets.chomp.to_i
        puts "Where did you surf?"
        location = gets.chomp
        puts "What rating did you give the surf?"
        rating = gets.chomp.to_i

        @list.add_task(name, difficulty, minutes, location, rating)

    end
    def delete_task()
        system 'clear'
        puts "What would you like to delete?"
        @list.print()
        index = input.to_i - 1
        @list.deleteSurf(index)

    end

    def favoriteSurf()
        puts "Which surf would you like to favourite?"
        @list.print()

        index = gets.chomp.to_i - 1
        @list.favoriteSurf(index)
        if(@list[index].favorite == false)
            @list[index].favorite = true
        else
            puts "this is already favourited"
        end 
    end
    
end



# welcome()
# puts "Press y to continue"

# continue = gets.chomp

# if continue == "y"
#     puts "You have selected continue"
# elsif continue != "y"
#     puts "Please select y to continue"
#     puts "Or enter exit to exit the program"
#     continue = gets.chomp
# end

# module Menu
#     #menu controller

#     def addSurf
#         puts "Enter session name"
#         name = gets.chomp
#         puts "Enter difficulty (easy, medium or hard)"
#         difficulty = gets.chomp
#         puts "Where did you go surfing?"
#         location = gets.chomp
#         puts "What rating did you give the session out of 10?"
#         rating = gets.chomp.to_i
#         Surf.new(name, difficulty, minutes, location, rating)
#     end
# end






# surf_quotes = ['If in doubt, paddle out - Nat Young', 'Out of the water, I am nothing. - Duke Kahanamoku', 'I think when a surfer becomes a surfer, its almost like an obligation to be an environmentalist at the same time - Kelly Slater', 'You can take a surfer out of the surf, but you can not take surf out of the surfer - Bob McTavish', 'Live to surf, surf to live - Mike Doyle', 'When the surfs up, your life is too - Wilhelm Sverdvik']

# name = ""