# Code your solution here!
require 'pry'


def generate_number
  answer = rand(6)
  return answer
end

def guess_number(ans,guess)
  if ans == guess
    puts "You guessed the correct number!"
    return 0
  else
    puts "The computer guessed #{ans}."
    return 1
  end
end

def exit_game
  puts "Goodbye!"
end

def run_guessing_game
  answer = generate_number
  puts "Guess a number between 1 and 6."
  while user_input = gets.chomp do
    if user_input == "exit"
      exit_game
      break
    else
      guess_number(answer,user_input.to_i)
      exit
      break
    end
  end
end
