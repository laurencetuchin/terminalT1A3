require 'tty-prompt'
prompt = TTY::Prompt.new
surf_dayofweek = %w(monday tuesday wednesday thursday friday saturday sunday)
# surfDay = prompt.select("What day did you surf?", surf_dayofweek)
surfDay = prompt.select("What day did you surf?", surf_dayofweek)
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
    attr_accessor :surf_day
    def intialize
        @surf_time = surf_time
        @surf_day = []
    end
    def surf_day 
        @surf_day
    end
    def surf_day=(surfDay)
        @surf_day = surfDay
    end

end

s = SurfSession.new
puts s.surf_day
# difficulty = %w(easy medium hard)
# prompt.select("How difficult?", difficulty)

# surf_dayofweek = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday']