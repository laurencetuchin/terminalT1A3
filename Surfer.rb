require_relative 'surfer_update'
require 'tty-prompt'
prompt = TTY::Prompt.new


class Surfer
    def intialize
        @surf_time
    end

    # def surf 
        
    # end


end

surferrr = Surfer.new
puts "How long did you surf for?"
surf_time << gets.to_i
puts surferrr.surf_time

# prompt.ask('What is your name?', default: ENV['USER'])
#logic to handle if user has surfed 
puts "Did you surf today? (yes or no)?"
surf_status = gets.strip 
case surf_status
when 'yes'
    SurfSession.new
when 'no'
    exit
else
    exit
end


def user_surfed
    if surf_status == 'true'
        SurfSession
    elsif surf_status == 'false'
        exit #add in return to main menu
end

