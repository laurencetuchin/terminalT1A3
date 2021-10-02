require_relative 'list'
# require_relative 'surfquote'
require 'tty-font'
require 'tty-prompt'
require 'colorize'
require 'tty-reader'
require 'yaml'



surf_quotes = ['If in doubt, paddle out - Nat Young', 'Out of the water, I am nothing. - Duke Kahanamoku', 'I think when a surfer becomes a surfer, its almost like an obligation to be an environmentalist at the same time - Kelly Slater', 'You can take a surfer out of the surf, but you can not take surf out of the surfer - Bob McTavish', 'Live to surf, surf to live - Mike Doyle', 'When the surfs up, your life is too - Wilhelm Sverdvik']


class UserInterface
    attr_accessor :surf_quotes
    def initialize
        @surf_quotes = surf_quotes
        @name = name
        @points = points
    end
    
    def mainMenu(listObjectArg)
        @list = listObjectArg
        
        welcome()
        menuLoop = true

        while menuLoop == true

                system("clear")
                
                
                
                puts "Welcome to" 
                font = TTY::Font.new(:doom)
                intro = puts font.write("Surf Saver")
                reader = TTY::Reader.new
                randomSurfQuote()
                # welcome()
                # Prints random surf quote to start
                # Get user input
                # Send user through menu
                # Get user to input option
                
                @list.print()
                puts "---------"
                prompt = TTY::Prompt.new
                menu_options = %w(add checkscore delete export favorite all)
                input = prompt.select("What would you like to do? #{name}".colorize(:blue), menu_options)

                case input
                when "add"
                    add_task()
                when "delete"
                    delete_task()
                when "checkscore"
                    check_points()
                when "export"
                    export_YAML()
                when "favorite"
                    favoriteSurf()
                when "all"
                    surfAll()
                    # Add check score method
                else
                    "Please try again"
                end

        end
            
    end
     
    def randomSurfQuote
        surf_quotes = ['If in doubt, paddle out - Nat Young', 'Out of the water, I am nothing. - Duke Kahanamoku', 'I think when a surfer becomes a surfer, its almost like an obligation to be an environmentalist at the same time - Kelly Slater', 'You can take a surfer out of the surf, but you can not take surf out of the surfer - Bob McTavish', 'Live to surf, surf to live - Mike Doyle', 'When the surfs up, your life is too - Wilhelm Sverdvik']   
        # @surf_quotes = surf_quotes
        reader = TTY::Reader.new
        random = surf_quotes.sample
        reader.read_line(random) 
    end
    
    # randomSurfQuote()
        
    def welcome
            puts "Please enter your name"
            @name = gets.chomp
            system 'clear'
            puts "Welcome to Surf Saver #{@name}".colorize(:blue)
            
    end

    # welcome()
    def name 
        @name
    end 
        
    def name=(name)
        @name = name
    end

    def points 
        @points
    end 
        
    def points=(points)
        @points = points
    end

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
        # weekday = day != "saturday" || "sunday"
        # weekend = day == "saturday" || "sunday"
        # if test
            
        # elsif 
            
        # end
        #Point factors
        #minutes
        #dayofweek
        #difficulty

        case difficulty
        when "easy"
            1
        when "medium"
            1.2
        else
            1.5
        end

        # Assigning multiplier to difficulty
        difficulty_score = 0
        if difficulty == "easy"
            difficulty_score = 1
        elsif difficulty == "medium"
            difficulty_score = 1.2
        elsif difficulty == "hard"
            difficulty_score = 1.5
        end

        day_score = 0
        case day
        when "saturday"
            day_score = 1
        when "sunday"
            day_score = 1
        else
            day_score = 1.3
        end

        totalpoints = minutes * difficulty_score * day_score     
        @points = totalpoints
        points = totalpoints
        # puts totalpoints.to_s
        puts "Congratulations #{@name} your points is #{@points}. Keep up the good work"
        puts "press any key to continue"
        input2 = gets.chomp

        date = "text"
        #Pushes and stores data into session object
        @list.add_task(name, difficulty, minutes, location, rating, day, favorite, points, date)

    end
    def delete_task()
        system 'clear'
        puts "What would you like to delete?"
        @list.print()
        input = gets.chomp
        index = input.to_i - 1
        @list.deleteSurf(index)

    end

    def favoriteSurf()
        puts "Which surf would you like to favourite?"
        @list.print()

        index = gets.chomp.to_i - 1
        @list.favoriteSurf(index)
        # if(@list[index].favorite == false)
        #     @list[index].favorite = true
        # else
        #     puts "this is already favourited"
        # end 

        # if(!@list.favoriteSurf(index))

        # end 
    end

    def export_YAML
        surf = @list
        puts surf.to_yaml
        File.open("src/#{surf}.yml", "w") { |file| file.write(surf.to_yaml)}
        puts "For your convenience, we have exported the file into the src folder"
        puts "press any key to continue"
        input = gets.chomp
    end

    def check_points()
        #calls instance variable for points
        puts "#{@name} you have scored #{@points}, great work!"
        puts "press any key to continue"
        input = gets.chomp
    end

    def surfAll()
        puts @list
        puts "press any key to continue"
        input = gets.chomp
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