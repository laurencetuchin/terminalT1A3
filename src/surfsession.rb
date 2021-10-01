

class Surf
    attr_reader :name, :minutes, :difficulty, :location, :rating
    
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
        @favorite = favorite
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
        when "saturday" || "sunday"
            difficultyMultiplier = 1
        when !"saturday" || "sunday"
            difficultyMultiplier = 1.2
        
        end
    end

    def totalPoints=(minutes, difficultyMultiplier)
        totalPoints = minutes * difficultyMultiplier
    end

    def favoriteSurf(bool)
        @favorite = true
    end

end
