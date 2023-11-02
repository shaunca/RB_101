VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == "rock" && second == "scissors") ||
    (first == "paper" && second == "rock") ||
    (first == "scissors" && second == "paper")
end

def display_result(player, computer)
  if win?(player, computer)
    prompt('You won!')
  elsif win?(computer, player)
    prompt('Computer won!')
  else
    prompt("It's a draw!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("Invalid input, please try again.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{choice}, computer chooses #{computer_choice}!")

  display_result(choice, computer_choice)

  prompt("Would you like to play again?")
  answer = gets.chomp
  break if answer.downcase.start_with?('n')
end

prompt("Thank you for playing!")
