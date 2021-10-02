require 'tty-prompt'


class Surf
    attr_reader :name, :minutes, :difficulty, :location, :rating, :points
    
    def initialize(name, difficulty, minutes, location, rating, day, favorite, points)
        @id = rand(666)
        @name = name
        @date = date
        @difficulty = difficulty
        @minutes = minutes
        @points = points
        @location = location
        @rating = rating
        @day = day
        @difficultyMultiplier = difficultyMultiplier
        @favorite = favorite
        puts "Congratulations #{@name} your points is #{@points}. Keep up the good work"
    end
    #changes difficulty to easy
    # prompt = TTY::Prompt.new
    # difficulty_setting = %w(easy medium hard)
    # difficulty = prompt.select("What difficulty was the surf?", difficulty_setting)
    
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

    #Get date
    def date 
        @date
    end

    # Set date
    def date=(date)
        date = Date.now.to_s
        @date = date
    end


    #Bonus score calculator
    def difficultyMultiplier
        case @day
        when "saturday" || "sunday"
            difficultyMultiplier = 1
        when !"saturday" || "sunday"
            difficultyMultiplier = 1.2
        
        end
    end

    #Get points
    def points 
        @points
    end
    #Set points
    def points=(minutes, difficultyMultiplier)
        points = minutes * difficultyMultiplier
    end

    def favoriteSurf
        @favorite
    end

    def favoriteSurf=(favorite)
        @favorite = favorite
        @favorite = true
    end

end
