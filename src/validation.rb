
require 'colorize'


class InputNumberError < StandardError
    
end

class StringError < StandardError

end


# Validates numbers
def validnumber(number)
    if number == /\w.+/
      raise InputNumberError, 'Please input a number'.colorize(:red)
      end
    raise InputNumberError, 'Please input numbers ONLY' if (number.to_i == 0) && (number != '0')
    number.to_i
end

# Validates words
def validword(word)
    if word == /\d.+/
      raise StringError, 'Please input a words'.colorize(:red)
      end
    raise StringError, 'Please input words ONLY' if (word.to_s == 0) && (word != '0')
    word.to_s
end