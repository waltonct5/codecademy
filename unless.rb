=begin
Sometimes you want to use control flow to check if something is false, 
rather than if it's true. You could reverse your if/else, 
but Ruby will do you one better: 
it will let you use an unless statement.
=end

hungry = false

unless hungry
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end

# puts "I'm writing Ruby programs!"

=begin
Remember, this is basically a short hand if statement. 
It will do whatever you ask unless the condition is true.
=end

broken = false
print "check check" unless broken

# puts "check check" as variable broken is set to false therefore is equal to false
