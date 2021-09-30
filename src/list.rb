
require_relative 'main.rb'
require_relative 'task.rb'
require_relative 'menu.rb'


class List
    
    
    def initialize()
        @session = [] #list of surf

    end

    def export_YAML
        @session 
    end

    def add_task(name, difficulty, minutes, location, rating)
        newTask = Task.new(name, difficulty, minutes, location, rating)
        @session.push(newTask)

    end

    def deleteSurf(surf)
        @session.push(surf)

    end
    def favoriteSurf(surf)
        @session.push(surf)

    end

    def sessionAll
        @session.each_with_index do |surf, index|
            puts "id: #{index} surf: #{surf}"
        end
    end 

    def print()
        index = 0 
        while index < @session.length
            if(@session[index].minutes >= 1)
                puts (index+1).to_s + ". " + @session[index].name
            else 
                puts (index+1).to_s + ". " + @session[index].name
            end

        index += 1

        end
    end


# stuff callum added





end

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


# require_relative 'menu'

# ui = UserInterface.new

# ui.main_menu()

# menu()