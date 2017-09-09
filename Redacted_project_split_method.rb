=begin
we can write a simple program to change a user's input with the tools we have now: arrays and iterators.

The .split Method
after setting variables and prompting for user input,
we'll want to divide the user's input into individual words.
.split; it takes in a string and returns an array. *****wow*****
If we pass it a bit of text in parentheses, 
.split will divide the string wherever it sees that bit of text, called a DELIMITER (",")
(tells Ruby to split up the string text whenever it sees a comma.)
=end

puts "Hey user, how ya doin?"
text = gets.chomp

puts "got any secrets?"
redact = gets.chomp

words = text.split(" ")

#Time to break out our iterators to go through the user's text.

words.each do |words|
  print words
end

# we didn't have spaces between our words, and we didn't actually replace the word with "REDACTED"
# We can fix that with some if/else magic!

puts "Enter some text: "
text = gets.chomp

puts "Enter words to redact: "
redact = gets.chomp

words = text.split(" ")
words.each { |word| 
  if word == redact
    print "REDACTED "
  else
 		print word + " "
  end }
  
  
=begin
  ADDITIONAL QUESTIONS TO RETURN TO
- What could you do to make sure your redactor redacts a word regardless of whether it's upper case or lower case?
- How could you make your program take multiple, separate words to REDACT?
- How might you make a new redacted string and save it as a variable, rather than just printing it to the console?

=end
