# A method is a reusable section of code written to perform a specific task in a program.
# There are a few good reasons to divide your programs into methods:
# 1. Bugs - assigning specific tasks to separate methods helps with this organization.
# 2. Efficient - you make your program less redundant and your code more reusable
# 3. Objects - stay tuned :)

=begin
Methods are defined using the keyword def (short for "define"). Methods have three parts:
The HEADER, {which includes the DEF keyword, the name of the METHOD, and any arguments the method takes. }
The BODY, which is the CODE block that describes the procedures the method carries out. 
The body is indented two spaces by convention (as with for, if, elsif, and else statements)
The END keyword.
=end

# from codecademy:
def puts_1_to_10
  (1..10).each { |i| puts i }
end

puts_1_to_10 

# When you "CALL" a method, the program will start looking for the method with that name and try to execute the code inside it.
# If the program doesn't find a defined method, it will return a NameError. 
# You call a method just by typing its name. (see above)

=begin
If a method takes arguments, we say it accepts or expects those arguments. 
The argument is the piece of code you actually put between the method's parentheses when you call it, 
and the parameter is the name you put between the method's parentheses when you define it. 
For instance, when we defined square above, we gave it the parameter n (for "number") 
and passed it the argument 12 when we called it

Splat arguments are arguments preceded by a *, 
which tells the program that the method can receive one or more arguments.
=end
# from codecademy:

def what_up(greeting, *friends)
  friends.each { |friend| puts "#{greeting}, #{friend}!" }
end

what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")

# Sometimes we don't just want a method to print something to the console, 
# but we actually want that method to hand us (or another method!) back a value. For that, we use RETURN.

def double(n)
  return n * 2
end

output = double(6)
output += 2
puts output

# Define a new method called add that takes two numbers as arguments.
# Inside the method, return the sum of those numbers.

def add(x, y)
  return x + y
end

# another ex:
# Define a by_three? method that takes a single integer parameter, number, and returns true 
# if that number is evenly divisible by three and false if not.

def by_three?(num)
  if num % 3 == 0
    return true
  else
    return false
  end
end


