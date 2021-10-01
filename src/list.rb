require_relative "surfsession.rb"


class List
    
    
    def initialize()
        @name = "New"
        @session = [] #list of surf

    end

    def export_YAML
        # Get all sessions
        @session 
        # file export

    end

    def add_task(name, difficulty, minutes, location, rating, day)
        # Add input info
        # TTY prompt

        
        newTask = Surf.new(name, difficulty, minutes, location, rating, day)
        @session.push(newTask)

    end

    def deleteSurf(index)
        @session.delete_at(index)
    end

    def favoriteSurf(index)
        @session[index].favorite()
    end

    def sessionAll
        @session.each_with_index do |surf, index|
            puts "id: #{index} surf: #{surf}"
        end
    end 

    def print()
        if(@session.length <= 0)
            return
        end
        
        puts @name + "List"
        index = 0 
        while index < @session.length
            puts (index+1).to_s + " ." + @session[index].to_s


            index += 1
        end
    end
end

