# require_relative 'surfer_update'
require 'tty-prompt'
prompt = TTY::Prompt.new
require_relative 'surfsession'

puts "Welcome to Surf Saver"
puts "It's designed to encourage you to keep surfing frequently"
puts "Challenge your friends and get the hightest score"
puts "Scores are calculated on a variety of factors"
puts "Including how many minutes you surf for, how difficult the surf was and what day of the week it is. Bonus points applied to weekday surfs because they require a little extra effort!"

puts "Are you ready to get started"
input = prompt.ask("yes or no", )
puts "You selected #{input}"



# class Surfer
#     def intialize
#         SurfSession.new
#     end
#     puts SurfSession.surf_day
#     # def surf 
        
#     # end


# end

# surferrr = Surfer.new
# puts "How long did you surf for?"
# surf_time << gets.to_i
# puts surferrr.surf_time

# prompt.ask('What is your name?', default: ENV['USER'])
#logic to handle if user has surfed 
# puts "Did you surf today? (yes or no)?"
# surf_status = gets.chomp 
# case surf_status
# when 'yes'
#     # puts "yes hi five"
#     SurfSession.new
# when 'no'
#     exit
# else
#     retry 
# end
# retry

# def user_surfed
#     if surf_status == 'true'
#         SurfSession
#     elsif surf_status == 'false'
#         exit #add in return to main menu
# end

#Enter the categorie's number, type 'list' to show the category list, or type 'exit':
