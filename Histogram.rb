# First, convert the user input strings into an array using .split method

puts "Enter a phrase you'd like to analyze: "
text = gets.chomp

words = text.split

frequencies = Hash.new(0)

# Next up: we want to iterate over words to add each word to our frequencies hash, one at a time.
# we first create a hash mapping strings to integers.

# Use .each to iterate over the words array.
# For each word we find, assume that the word itself is a key in frequencies and increment its value by 1.
# This is why our default is 0. The first time we find the word, it will have a default value of`0 that we can increment by 1.

words.each { |word| frequencies[word] += 1 }

# We now have a hash full of word / frequency key-value pairs. 
# Now we need to figure out a way to get our information in the order we want it.

frequencies = frequencies.sort_by do |word, count| 
  count
end
frequencies.reverse!

# Finally, iterate over the array in order to print out each key-value pair to the console.
# (Iterate over .each key/value pair in the frequencies hash. 
# Then, puts each word, a single space, and its frequency to the console, like in the example above.)

frequencies.each do |word, count|
  puts word + " " + count.to_s
end
# ALL DONE!
