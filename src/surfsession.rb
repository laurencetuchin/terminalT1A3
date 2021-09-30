require 'tty-prompt'
prompt = TTY::Prompt.new
# surf_dayofweek = %w(monday tuesday wednesday thursday friday saturday sunday)
# surfDay = prompt.select("What day did you surf?", surf_dayofweek)
# surfDay = prompt.select("What day did you surf?", surf_dayofweek)
# trueFalse = %w(true false)
# trueFalseQuestion = prompt.select("true or false", trueFalse)


# case trueFalseQuestion
# when 'true'
#     puts "this is true"
# when 'false'
#     puts "false"
# else
#     puts "nothing"
# end


class SurfSession
    def intialize(surf_time, surf_day)
        @surf_time = surf_time
        @surf_day = surf_day
        @surf_date = Time.now
    end

    # def surf_day 
    #     @surf_day
    # end
    # def surf_day=(surfDay)
    #     @surf_day = surfDay
    # end

end

# s = SurfSession.new
# puts s.surf_day
# difficulty = %w(easy medium hard)
# prompt.select("How difficult?", difficulty)

# surf_dayofweek = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday']


class Surf
    attr_reader :name, :minutes
    
    def initialize(id, name, date, difficulty, minutes, points, location, rating)
        @id = rand(666)
        @name = name
        @date = Date.now.to_s
        @difficulty = difficulty
        @minutes = minutes
        @points = points
        @location = location
        @rating = rating
        @day = day
        @difficultyMultiplier = difficultyMultiplier
    end
    #changes difficulty to easy
    def setEasy
        @difficulty = "easy"
    end
    
    #changes difficulty to medium

    def setMedium
        @difficulty = "medium"
    end

    #changes difficulty to hard
    def setHard
        @difficulty = "hard"
    end



    def difficultyMultiplier
        case @day
        when == "saturday" || "sunday"
            difficultyMultiplier = 1
        else
            difficultyMultiplier = 1.2
        end

    def totalPoints=(minutes, difficultyMultiplier)
        totalPoints = minutes * difficultyMultiplier
    end

end


class Add 
    attr_accessor :id, :name, :date, :difficulty, :minutes, :points
    def initialize
        @id = rand(666)
        @name = gets.chomp
        @date = Date.now
        @difficulty = prompt.select("How difficult was the surf?", surfdifficulty)
        @minutes = prompt.ask("How long did you surf for? (in minutes)")
    end
end

class addSurf
    id = prompt.ask()
    
    Add.new(id)
end