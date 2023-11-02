def print_in_bx(message)
  horizontal_line = " +#{'-' * (message.size + 2)}+"
  vertical_line = "| #{' ' * (message.size + 2)}|"
  
  puts horizontal_line
  puts vertical_line 
  puts "| #{message}  |"
  puts vertical_line 
  puts horizontal_line
end

print_in_bx('To boldly go where no one has gone before.')
#+--------------------------------------------+
#|                                            |
#| To boldly go where no one has gone before. |
#|                                            |
#+--------------------------------------------+