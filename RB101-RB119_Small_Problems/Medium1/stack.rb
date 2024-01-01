=begin
A stack is a list of values that grows and shrinks dynamically.
In ruby, a stack is easily implemented as an Array that just uses the #push and #pop methods.

A stack-and-register programming language is a language that uses a stack of values.
Each operation in the language operates on a register, which can be thought of as the current value.
The register is not part of the stack. Operations that require two values pop the topmost item from the stack
(that is, the operation removes the most recently pushed value from the stack),
perform the operation using the popped value and the register value, and then store the result back in the register.

Consider a MULT operation in a stack-and-register language. It multiplies the stack value with the register value,
removes the value from the stack, and then stores the result back in the register.
Thus, if we start with a stack of 3 6 4 (where 4 is the topmost item in the stack), and a register value of 7,
then the MULT operation will transform things to 3 6 on the stack (the 4 is removed), and the result of the multiplication, 28,
is left in the register. If we do another MULT at this point, then the stack is transformed to 3, and the register is left with the value 168.

Write a method that implements a miniature stack-and-register-based programming language that has the following commands:

n Place a value n in the "register". Do not modify the stack.
PUSH Push the register value on to the stack. Leave the value in the register.
ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
POP Remove the topmost item from the stack and place in register
PRINT Print the register value

All operations are integer operations (which is only important with DIV and MOD).

Programs will be supplied to your language method via a string passed in as an argument.
Your program may assume that all programs are correct programs; that is,
they won't do anything like try to pop a non-existent value from the stack, and they won't contain unknown tokens.

You should initialize the register to 0.


Input = integers
output = register

explicit rules =
n


implicit rules
integers
keep track of the register, and the register is not part of the stack
store the stack somewhere

data
arrays

algorithm

create a method that will take user input and call methods as the arguments fit
create case statements and call on methods based on case and modidfy the stack and register
stack = []
register = 0

create these methods
PUSH = push register value to stack but retain the value on register
ADD = pop last element in array stack do addition and store sum in register
SUB = pop last element in array stack do subtraction and store total in register
MULT = pop last element in array stack do multiplication and store product in register
DIV = pop last element in array stack divide and put quotient on register
MOD = pop last element in array stack modulo remainder on register
POP = remove the topmost number in stack and push to the register
PRINT = print the register value.

it takes string arguments
=end

def multilang(args)
  stack = []
  register = 0
  args.split.each do |command|
    case command
    when "PUSH" then stack << register
    when "ADD"  then register += stack.pop
    when "SUB"  then register -= stack.pop
    when "MULT" then register *= stack.pop
    when "DIV"  then register = stack.pop / register
    when "MOD"  then register = stack.pop % register
    when "POP"  then register = stack.pop
    when "PRINT" then puts register
    else             register = command.to_i
    end
  end
end

multilang('5 PUSH PRINT 5 ADD PRINT')

p (3 + (4 * 5) - 7) / (5 % 3)