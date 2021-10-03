require 'tty-prompt'
require 'colorize'
require 'time'

# Stores Surf session data
class Surf
    attr_accessor :date
    attr_reader :name, :minutes, :difficulty, :location, :rating, :points, :favorite
    
    def initialize(name, difficulty, minutes, location, rating, day, favorite, points)
        @id = rand(666)
        @name = name
        @date = DateTime.now()
        @difficulty = difficulty
        @minutes = minutes
        @points = points
        @location = location
        @rating = rating
        @day = day
        @@date = @date
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

    # def filename
        
    #     puts "#{date}_#{name}_#{location}"
    # end


    def setfavorite()
        if @favorite == true
            puts "This is already favorited!".colorize(:red)
            puts "Press any key to return to main menu"
            inputfalse = gets.chomp
            return false
        else
            puts "This surf is now favorited".colorize(:green)
            @favorite = true
            puts "Press any key to return to main menu"
            inputtrue = gets.chomp
            return true
        end
    end

    def alreadyFavorited
        return @favorite == true
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

    def printsession
        puts "Surf Session: #{name} \nDate:  #{date} \nPoints:  #{points}"
    end
end
