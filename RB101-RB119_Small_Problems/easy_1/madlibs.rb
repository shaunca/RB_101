
def prompt(message)
  puts "=> #{message}"
end

prompt("Welcome to Madlibs!")

loop do
  
  prompt("Please enter a noun")
  noun = gets.chomp
  
  prompt("Please enter an adjective")
  adjective = gets.chomp
  
  prompt("Please enter a verb with a gerund (i.e. dancing)")
  verb = gets.chomp
  
  prompt("Please enter an adverb")
  adverb = gets.chomp
  
  prompt("Compiling words...")
  prompt("Your #{adjective} #{noun} is #{adverb} #{verb}!")
  
  prompt("Would you like to make another madlib?")
  answer = gets.chomp
  break if answer.downcase.start_with?('y')
end

prompt("Thank you for playing! Goodbye!")