# require 'pry' 

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
  card
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp
  answer 
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = 0 
  2.times do 
    card_total += deal_card
  end 
  display_card_total(card_total)
end

def invalid_command
  puts "Please enter a valid command."
end 

def hit?(current_card_total)
  # play = true 
  # while current_card_total < 21 && play
    prompt_user
    answer = get_user_input

    if answer == 's'
      play = false
    elsif answer == 'h'
      # binding.pry
      # deal_card
      current_card_total += deal_card
    else
      invalid_command
    end
  # end
  # binding.pry
  current_card_total
end

# hit?(7)


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  x = initial_round
  total = 0 
  until total > 21
    total += hit?(x)
    display_card_total(total)
  end
  end_game(total)
end
    
