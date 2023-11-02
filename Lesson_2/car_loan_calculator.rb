def prompt(message)
  puts "=> #{message}"
end

def monthly_payment(loan_amount, apr, loan_duration)
  mpr = apr / 12.to_f
  result = loan_amount * (mpr / (1 - (1 + mpr)**(-loan_duration)))
  prompt("Your monthly payment is $#{format('%.2f', result)}")
end

prompt("Welcome to the Mortgage/Car Loan Calculator!")
prompt("--------------------------------------------")

loop do
  
  prompt("What is the loan amount?")

  loan_amount = gets.chomp.to_f
  
  prompt("What is the Annual Percentage Rate? (Please input in decimals)")
  
  apr = gets.chomp.to_f

  prompt("What is the loan duration? (Please input months)")
  
  loan_duration = gets.chomp.to_f

  monthly_payment(loan_amount, apr, loan_duration)
  
  prompt("Would you like to do another calculation?")
  answer = gets.chomp
  
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for your participation!")
prompt("Goodbye!")