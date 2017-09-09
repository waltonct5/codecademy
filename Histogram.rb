# First, convert the user input strings into an array using .split method

puts "Enter a phrase you'd like to analyze: "
text = gets.chomp

words = text.split

frequencies = Hash.new(0)

# Next up: we want to iterate over words to add each word to our frequencies hash, one at a time.
# we first create a hash mapping strings to integers.
#
