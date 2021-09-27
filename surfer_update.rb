require 'tty-prompt'
prompt = TTY::Prompt.new
# User surfs today - yes / no?

# time of surf in minutes
class Surfer_update
    def initialize
        @surf_time = []
    end
    def surf_time
        # return "You surfed for #{@surf_time} minutes"
        @surf_time
    end
    def surf_time=(time_in_minutes)
        @surf_time = time_in_minutes
    end
end
# surf_time = []
# surf_time_points = surf_time * 10

# takes in user input on surf difficulty

# difficulty = ['easy', 'medium', 'hard']
difficulty = %w(easy medium hard)
prompt.select("How difficult?", difficulty)

# def thechallenge
    if difficulty == 'easy'
    if prompt.select == 'easy'
        return "The surf was very easy"
    elsif difficulty == 'medium'
        return "The surf was somewhat challenging"
    elsif difficulty == 'hard'
        return "The surf was very challenging"
    end
# end

# thechallenge

surf_dayofweek = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday']
# surf_daypoints = 
#     if surf_dayofweek == /^s.*y$/
#         return 1 
#     else
#         return 1.2
#     end

# total_points = surf_time_points * surf_daypoints

# add regex to match saturday and sunday
# /sS.+*y /
# if (saturday/sunday) ? surf_time_points * 

surfer1 = Surfer_update.new
# puts "how many minutes did you surf for?"
surfer1.surf_time = 10
# surfer1.surf_time = 20

puts surfer1.surf_time