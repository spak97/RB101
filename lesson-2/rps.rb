VALID_CHOICES = ['rock', 'paper', 'scissors']

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
  (first == 'paper' && second == 'rock') ||
  (first == 'scissors' && second == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("you won")
  elsif win?(computer, player)
    prompt("you lost")
  else
    prompt("tie")
  end
end

def prompt(message)
  puts "=> #{message}"
end


loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(' ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("Invalid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt "you chose: #{choice}; computer chose #{computer_choice}"

  display_results(choice, computer_choice)

  prompt("Do you want to play again? y or n")
  ans = gets.chomp
  break unless ans.downcase.start_with?('y')
end

prompt("thanks for playing. Bye")


