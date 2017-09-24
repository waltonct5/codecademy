=begin

A Simpler 'If' & 'Unless'
instead of:
if condition
  # Do something!
end
-----
expression if boolean         , or....
ex: puts "It's true!" if true                  don't need an end on one liners


ternary conditional expression
It's called "ternary" because it takes three arguments: a boolean, an expression to evaluate if the boolean is true, 
and an expression to evaluate if the boolean is false.      order of arguments is important!!
instead of: if/else end
-----
boolean ? Do this if true: Do this if false
ex: puts 3 < 4 ? "3 is less than 4!" : "3 is not less than 4."
ex: puts true ? "True!" : "False!"
which is the same as:

if true
  puts "True!"
else
  puts "False!"
end


When and Then: The Case Statement
instead of: case/when/then
-----
case language
  when "JS" then puts "Websites!"
  when "Python" then puts "Science!"
  when "Ruby" then puts "Web apps!"
  else puts "I don't know!"
end


Conditional Assignment
-what if we only want to assign a variable if it hasn't already been assigned?
For this, we can use the conditional assignment operator: ||=. 
It's made up of the or (||) logical operator and the normal = assignment operator.


Implicit Return
-What if we don't put a return statement in our method definition, though?
>Ruby's methods will return the result of the last evaluated expression.
instead of: def add(a,b)
  return a + b
end
-------
def add(a,b)
  a + b
end



Short-Circuit Evaluation
means that Ruby doesn't look at both expressions unless it has to 
(returns true only when expressions on both sides of the operator are true)
def a
  puts "A was evaluated!"
  return true
end

def b
  puts "B was also evaluated!"
  return true
end

puts a || b
puts "------"
puts a && b
# displays:
A was evaluated!
true
------
A was evaluated!
B was also evaluated!
true


Let's get a little inventive. Write a loop that only puts the even values of my_array. 
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
my_array.each { |num| puts num if num % 2 == 0 }


.upto and .downto
This is a much more Rubyist solution than trying to use a for loop that stops when a counter variable hits a certain value.
95.upto(100) { |num| print num, " " }
# Prints 95 96 97 98 99 100

Use .upto to puts the capital letters "L" through "P".
"L".upto("P") { |a| puts a }


.respond_to?
- takes a symbol and returns true if an object can receive that method and false otherwise. 
For example,

[1, 2, 3].respond_to?(:push)
would return true, since you can call .push on an array object. 


concatenation operator (also known as "the shovel")
- Instead of typing out the .push method name, you can simply use <<
caption = "A giraffe surrounded by "
caption << "weezards!" 

puts caption # returns A giraffe surrounded by weezards!



String Interpolation
All you need to do is place the variable name inside #{} within a string
