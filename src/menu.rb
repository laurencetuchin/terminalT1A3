require_relative 'list'
# require_relative 'surfquote'
require 'tty-font'
require 'tty-prompt'

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
                randomSurfQuote()
                
                # Prints random surf quote to start
                # Get user input
                # Send user through menu
                # Get user to input option
                
                @list.print()
                puts "What would you like to do?"
                puts "---------"
                prompt = TTY::Prompt.new
                menu_options = %w(add favorite delete show(list))
                input = prompt.select("What would you like to do?", menu_options)

                case input
                when "add"
                    add_task()
                when "delete"
                    delete_task()
                when "show"
                    delete_task()
                when "checkscore"
                    delete_task()
                    # Add check score method
                else
                    "Please try again"
                end

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
        prompt = TTY::Prompt.new
        # name used to describe session
        name = prompt.ask("Write a name for your surf session below")

        # Gets user difficulty
        # Difficulty used for points system
        difficulty_setting = %w(easy medium hard)
        difficulty = prompt.select("What difficulty would you describe the surf?", difficulty_setting)

        # Gets minutes user surfed
        # Minutes used for points system
        puts "How many minutes did you surf for?"
        minutes = gets.chomp.to_i

        # Gets location that user surfed
        location = prompt.ask("Where did you surf?")
        
        
        # Gets user ratings for surf
        rating = prompt.ask("What rating did you give the surf? (Number out of 10)")

        # User can select days from list
        # Day value passed into surf
        days = %w(monday tuesday wednesday thursday friday saturday sunday)
        day = prompt.select("What day did you surf?", days)
        favoriteSurf = %w(yes no)
        favorite = prompt.select("Would you like to favorite this surf?", favoriteSurf)
        #Reassign yes/no strings to boolean
        if favorite == "yes"
            favorite = true
        elsif favorite == "no"
            favorite = false
        end

        #Calculates points and assigns into object array
        weekday = day != "saturday" || "sunday"
        weekend = day == "saturday" || "sunday"
        if test
            
        elsif 
            
        end
        
        points = 
        #Pushes and stores data into session object
        @list.add_task(name, difficulty, minutes, location, rating, day, favorite)

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