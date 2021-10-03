# puts "Are you ready to get started"
# input = prompt.ask("yes or no", )
# puts "You selected #{input}"



# class SurferSaver
#     def intialize
        
#     end
    
#     def add_session()
#         puts "Enter your session details"
#         puts "How many minutes did you go surfing for?"
#         surf_time = gets.to_i
#         puts "What day did you go surfing?"
#         surf_day = gets
#         @surf_session.add_session(surf_time,surf_day)
#     end

#     # Need to add in edit
#     # def edit 
        
#     # end
# end

# surferrr = Surfer.new
# puts "How long did you surf for?"
# surf_time << gets.to_i
# puts surferrr.surf_time

# prompt.ask('What is your name?', default: ENV['USER'])
# logic to handle if user has surfed 
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

# puts "What would you like to do?"
# # input = prompt.ask("yes or no", )
# menu = %w(add edit delete exit list)
# menu_input = prompt.select("What would you like to do?", menu)

# case menu_input
# when "add"
#     puts "#{menu_input} selected" #method
#     surf_add.new
# when "edit"
#     puts "edit" #method
# when menu == 'delete'
#     delete #method
# when menu == 'exit'
#     exit #method
# when menu == 'list'
#     list #method
# else
    
# end

#welcome $user message

# $user = prompt.ask("Enter your name!")
# puts "Thank you $user"


# class Add 
#     attr_accessor :id, :name, :date, :difficulty, :minutes, :points
#     def initialize
#         @id = 1
#         @name = gets.chomp
#         @date = Date.now
#         @difficulty = prompt.select("How difficult was the surf?", surfdifficulty)
#         @minutes = prompt.ask("How long did you surf for? (in minutes)")
#     end
# end

# class Menu
#     attr_accessor :add, :list, :delete, :exit
#     def initialize
#         @menu = menu()
#     end
#     def menu=(menu)
#         menu = prompt.select("What would you like to select", add delete list exit)
#     end
    
    
#     def add=(add)
#         add = Add.new
#     end

#     listIndex = list #add index method
#     def delete=(delete)
#         printList(surfSession)
#         index = prompt.select("What would you like to delete?" )
#         delete = surfSession.delete_at(index)
#         delete = Delete.n
#     end    
#     def list=(list)
#         list = list(surfSession)
#     end  
#     def exit=(exit)
#         exit = "exit"
#     end  

# end

# class User

# end


# class User
#     def initialize(user)
#         @user = prompt.ask("What is your name?", )
#         puts "Thank you #{@user}"
#         puts "Press y to get started!"
#         input = gets.chomp
#     end

#     if input == "y"
#         Menu.new
#     else
#         puts "Press y to get started"
#         puts "Or press exit to exit the program"
#     end
# end


# class User
#     attr_reader :username
#     def initialize(username)
#         @username = username
#         @user_id = rand(999)
#         @surf_session = []
#     end

#     def surfAdd(surf)
#         @surf_session.push(surf)
#     end

#     def user_info
#         puts "Your profile info"
#         puts "User name: #{@username}"
#         puts "Your user id: #{@user_id}"

#         puts "Total surf sessions: #{@surf_session}"
#         puts "List of surfs include"
#         puts @surf_session.each do |surf|
#             puts "Location: #{surf.location}"
#             puts "Rating: #{surf.rating}"
#             puts "Rating: #{surf.rating}"
#         end

#     end

#     def surfRemove(surf)
#         puts @surf_session
#         @surf_session.each_with_index do |surf, index|
#             puts "Id: #{index} surf: #{surf}"
#         puts "Please enter the surf id you would like to remove"
#         index = gets.chomp
#         @surf_session.delete_at(index)
#         system 'clear'
#         puts @surf_session
        
#     end
#     def printUsername
#         @username = username
#         puts username
#     end


# end


# class Add 
#     attr_accessor :id, :name, :date, :difficulty, :minutes, :points
#     def initialize
#         @id = rand(666)
#         @name = gets.chomp
#         @date = Date.now
#         @difficulty = prompt.select("How difficult was the surf?", surfdifficulty)
#         @minutes = prompt.ask("How long did you surf for? (in minutes)")
#     end
# end



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


# class SurfSession
#     def intialize(surf_time, surf_day)
#         @surf_time = surf_time
#         @surf_day = surf_day
#         @surf_date = Time.now
#     end

#     # def surf_day 
#     #     @surf_day
#     # end
#     # def surf_day=(surfDay)
#     #     @surf_day = surfDay
#     # end

# end

# s = SurfSession.new
# puts s.surf_day
# difficulty = %w(easy medium hard)
# prompt.select("How difficult?", difficulty)

# surf_dayofweek = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday']




surf_quotes = ['If in doubt, paddle out - Nat Young', 'Out of the water, I am nothing. - Duke Kahanamoku', 'I think when a surfer becomes a surfer, its almost like an obligation to be an environmentalist at the same time - Kelly Slater', 'You can take a surfer out of the surf, but you can not take surf out of the surfer - Bob McTavish', 'Live to surf, surf to live - Mike Doyle', 'When the surfs up, your life is too - Wilhelm Sverdvik']

name = ""


puts "Welcome to" 
puts font.write("Surf Saver")

# Prints random surf quote to start
randomSurfQuote(surf_quotes)

def welcome
    puts "Please enter your name"
    name = gets.chomp
    system 'clear'
    puts "Welcome to Surf Saver #{name}".colorize(:red)

end



welcome()
puts "Press y to continue"

continue = gets.chomp

if continue == "y"
    puts "You have selected continue"
elsif continue != "y"
    puts "Please select y to continue"
    puts "Or enter exit to exit the program"
    continue = gets.chomp
end


# require_relative 'menu'

# ui = UserInterface.new

# ui.main_menu()

# menu()