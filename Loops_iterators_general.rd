=begin
An *iterator* is just a Ruby method that repeatedly invokes a block of code
The simplest iterator is the loop method. You can create a basic (but infinite!) loop by simply typing:

loop { print "Hello, world!" }

In Ruby, curly braces ({}) are generally interchangeable with the keywords do (to open the block) and end (to close it). 
Knowing this, we can write a smarter loop than the one above:
=end

i = 0
loop do
  i += 1
  print "#{i}"
  break if i > 5
end

# break - breaks a loop as soon as its condition is met.
# next - skip over certain steps in the loop.

for i in 1..5
  next if i % 2 == 0
  print i
end
 
=begin
In the above example, we loop through the range of 1 through 5, assigning each number to i in turn.
If the remainder of i / 2 is zero, we go to the next iteration of the loop.
Then we print the value of i. This line only prints out 1, 3, and 5 because of the previous line.
** To check if ODD: i % 2 == 1
=end

# A more useful iterator is the .each method, which can apply an expression to each element of an object, one at a time.

collection.each { |variable| puts variable
  # Do something 
}
# or
collection.each do |variable|
  puts variable
  # Do something 
end


=begin ex: Use the .each method on the odds array to print out double the value of each item of the array. 
In other words, multiply each item by 2. Make sure to use print rather than puts, so your output appears on one line.
=end

odds = [1,3,5,7,9]
odds.each { |odds| print odds*2
  }

# .times method is like a super compact for loop: it can perform a task on each item in an object a specified number of times.

10.times { print "Chunky bacon!" }

# to note:
# a WHILE loop can be converted into an UNTIL loop and also a FOR loop pretty easily:

i = 1
until i == 51
  print i
  i += 1
end

i = 1
while i < 51
  print i
  i += 1
end

for i in 1...51
  print i
end

# loop with LOOP

i = 1
loop do
  i += 1
  print "Ruby!"
  break if i == 31
end
