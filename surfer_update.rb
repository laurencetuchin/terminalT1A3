# User surfs today - yes / no?

# time of surf in minutes
class Surfer_update
    def initialize
        @surf_time = []
    end
    def surf_time
        return "You surfed for #{@surf_time} minutes"
    end
    def surf_time=(time_in_minutes)
        @surf_time = time_in_minutes
    end
end
# surf_time = []
# surf_time_points = surf_time * 10

# takes in user input on surf difficulty

surf_difficulty = ['easy', 'medium', 'hard']

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
surfer1.surf_time = 20

puts surfer1.surf_time