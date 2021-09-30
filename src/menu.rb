
require_relative 'list.rb'
require_relative 'surfsession.rb'

class UserInterface
    def initialize()

    end 
# stuff callum added

    def mainMenu(list)
        @list = list

        menuLoop = true

        while menuLoop == true

                system 'clear'
                
                @list.print()
            
            
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
        end

        def add_task()
            system 'clear'

            puts "Write your name below"
            name = gets.chomp

            @list.add_task(name, difficulty, minutes, location, rating)

        end
        def delete_task(listArray)
            system 'clear'

            puts "What would you like to delete?"
            @list.print()
            
            name = gets.chomp

            @list.add_task(name, difficulty, minutes, location, rating)

        end

        def favoriteSurf(listArray)
            puts "Which surf would you like to favourite?"
            @list.print()

            index = gets.chomp.to_i - 1

            if(@list[index].favorite == false)
                @list[index].favorite = true
            else
                puts "this is already favourited"
            end 
        end



    end
    
    
    
    # welcome()
    puts "Press y to continue"
    
    continue = gets.chomp
    
    if continue == "y"
        puts "You have selected continue"
    elsif continue != "y"
        puts "Please select y to continue"
        puts "Or enter exit to exit the program"
        continue = gets.chomp
    end

end



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