require_relative "surfsession.rb"
require 'colorize'

class List
    
    
    def initialize()
        @session = [] #list of surf object

    end

    def export_YAML
        # Get all sessions
        @session 
        # file export

    end

    def add_task(name, difficulty, minutes, location, rating, day, favorite, points)
        # Add input info
        # TTY prompt

        #Pushes data to surf session
        newTask = Surf.new(name, difficulty, minutes, location, rating, day, favorite, points)
        @session.push(newTask)

    end

    def deleteSurf(index)
        # Add print
        print()
        @session.delete_at(index)
    end

    def favoriteSurf(index)
        return @session[index].setfavorite()
    end

    def sessionAll
        @session.each_with_index do |surf, index|
            puts "id: #{index} surf: #{surf}"
        end
    end 

    def print()
        if(@session.length <= 0)
            puts "You currently don't have any surf sessions".colorize(:red)
            puts "Please add below".colorize(:red)
            return
        end
        
        puts @name
        index = 0 
        while index < @session.length
            puts (index+1).to_s + " ." + @session[index].to_s


            index += 1
        end
    end
end

