# COLLECT METHOD 
# There are a bunch of really useful Ruby methods that take blocks. One we haven't covered yet is collect.
# - takes a block and applies the expression in the block to every element in an array. 
# - Returns a COPY of my_nums, but doesn't change the original my_nums array. If we want to do that, we can use .collect! 

my_nums = [1, 2, 3]
my_nums.collect { |num| num ** 2 }
# ==> [1, 4, 9]

=begin
We've created an array, fibs, and placed the first ten Fibonacci numbers in it.

Create a new variable, doubled_fibs, and set it equal to the result of calling fibs.collect. 
The block you pass to .collect should double each Fibonacci number, similar to the example above.

fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

# Add your code below!
doubled_fibs = fibs.collect { |x| x * 2 } 
puts doubled_fibs


You can also pass parameters to yield! 

def yield_name(name)
  puts "In the method! Let's yield."
  yield("Kim")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end

yield_name("Eric") { |n| puts "My name is #{n}." }

# Now call the method with your name!

The yield_name method is defined with one parameter, name.
On line 9, we call the yield_name method and supply the argument "Eric" for the name parameter. 
Since yield_name has a yield statement, we will also need to supply a block.
Inside the method, on line 2, we first puts an introductory statement.
Then we yield to the block and pass in "Kim".
In the block, n is now equal to "Kim" and we puts out "My name is Kim."
Back in the method, we puts out that we are in between the yields.
Then we yield to the block again. This time, we pass in "Eric" which we stored in the name parameter.
In the block, n is now equal to "Eric" and we puts out "My name is Eric."
Finally, we puts out a closing statement.

In the method! Let's yield.
My name is Kim.
In between the yields!
My name is Eric.
Block complete! Back in the method.
In the method! Let's yield.
My name is Kim.
In between the yields!
My name is Chloe.
Block complete! Back in the method.

Define your own method, double, that accepts a single parameter and yields to a block. 
Then call it with a block that multiplies the number parameter by 2. You can double any number you like!

def double(number)
 yield number
end
double(2) do |n|
n * 2
end

blocks != objects. can't be saved to variables and don't have all the powers and abilities of a real object. 
For that, we'll need... procs!
With blocks, you have to write your code out each time you need it; with a proc, write code once and can use it many times!

Proc Syntax
Procs are easy to define! You just call Proc.new and pass in the block you want to save. 
Here's how we'd create a proc called cube that cubes a number (raises it to the third power):

cube = Proc.new { |x| x ** 3 }
We can then pass the proc to a method that would otherwise take a block, and we don't have to rewrite the block over and over!

[1, 2, 3].collect!(&cube)
# ==> [1, 8, 27]
[4, 5, 6].map!(&cube)
# ==> [64, 125, 216]
(The .collect! and .map! methods do the exact same thing.)

The & is used to convert the cube proc into a block (since .collect! and .map! normally take a block). 
We'll do this any time we pass a proc to a method that expects a block.
1.
The .floor method rounds a float (a number with a decimal) down to the nearest integer. 
Write a proc called round_down that will do this rounding (we've added the code to pass it to floats.collect).
round_down = Proc.new { |x| x.floor }

# Complete this as a new Proc
over_4_feet = Proc.new { |height| height >= 4 }

# Change these three so that they use your new over_4_feet Proc
can_ride_1 = group_1.select { |height| height >= 4 }
can_ride_2 = group_2.select { |height| height >= 4 }
can_ride_3 = group_3.select { |height| height >= 4 }
vvvvvvvv
can_ride_1 = group_1.select(&over_4_feet)
can_ride_2 = group_2.select(&over_4_feet)
can_ride_3 = group_3.select(&over_4_feet)


1.
Create a method, greeter, that takes no arguments and yields to a block.

Create a Proc, phrase, that puts "Hello there!". Pass this to greeter instead of a block. 
def greeter()
  yield
end

phrase = Proc.new { |x| puts "Hello there!" }
greeter(&phrase)
# => Hello there!

there's an even easier way.
Unlike blocks, we can call procs directly by using Ruby's .call method. Check it out!

test = Proc.new { # does something }
test.call
# does that something!

You can also convert symbols to procs using that handy little &.
strings = ["1", "2", "3"]
nums = strings.map(&:to_i)
# ==> [1, 2, 3]
By mapping &:to_i over every element of strings, we turned each string into an integer!

The Ruby Lambda
with the exception of a bit of syntax and a few behavioral quirks, lambdas are identical to procs.
lambda { |param| block }

create a new variable called symbolize. 
In symbolize, store a lambda that takes one parameter and calls .to_sym on that parameter.
We then use symbolize with the .collect method to convert the items in strings to symbols!

strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
# Write your code below this line!

symbolize = lambda { |n| n.to_sym }

# Write your code above this line!
symbols = strings.collect(&symbolize)
print symbols



Lambdas vs. Procs

First, a lambda checks the number of arguments passed to it, while a proc does not. 
- This means that a lambda will throw an error if you pass it the wrong number of arguments, 
  whereas a proc will ignore unexpected arguments and assign nil to any that are missing.
Second, when a lambda returns, it passes control back to the calling method; when a proc returns, 
  it does so immediately, without going back to the calling method.
 in-other-wwords: A lambda is just like a proc, 
 only it cares about the number of arguments it gets and it returns to its calling method rather than returning immediately.
  
  def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_lambda
# => Batman will win!
# => Iron Man will win!
  
  See how the proc says Batman will win? 
  This is because it returns immediately, without going back to the batman_ironman_proc method.

Our lambda, however, goes back into the method after being called, 
so the method returns the last code it evaluates: "Iron Man will win!"

1. Create a lambda, symbol_filter, that takes one parameter and checks to see if that parameter .is_a? Symbol.
Create a new variable called symbols, and store the result of calling my_array.select and passing it your lambda.
puts symbols at the end of the file in order to see the final contents of the array.

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

# Add your code below!
symbol_filter = lambda { |n| n.is_a? Symbol }
symbols = my_array.select(&symbol_filter)
puts symbols
# => [:kettles, :mittens, :packages]

1. The odds_n_ends array is full of all sorts of objects, but we only want the integers (numbers without decimal bits).

Create a new variable, ints, and store the result of calling odds_n_ends.select method with a block that checks 
if the element .is_a? Integer.
puts ints at the end of the file in order to see the final contents of the array.

odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

ints = odds_n_ends.select { |n| n.is_a? Integer }
puts ints


1. Create a lambda called first_half that checks if a hash value is less than (that is, earlier in the alphabet than) "M". 
Make sure to use a capital "M," since we'll be checking capitalized names! 
Because it will be checking a hash, your lambda should include |key, value| instead of just |value|.

first_half = lambda { |n, v| v < 'M' }

1.
To finish up, let's go ahead and create a variable called a_to_m and set it equal to calling .select on crew, 
and pass in your first_half lambda to filter for the names that are before "M" in the alphabet. 
Remember to pass &first_half to convert your lambda to a block!

first_half = lambda { |n, v| v < 'M' }
a_to_m = crew.select(&first_half)
puts a_to_m
