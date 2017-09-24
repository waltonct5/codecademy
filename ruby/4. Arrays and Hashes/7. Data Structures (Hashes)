# What if we don't want to use numbers as indices at all?

# A hash is a collection of key-value pairs. Hash syntax looks like this:

# Values are assigned to keys using => Any Ruby object can be used for a key or value.

hash = {
  key1 => value1,
  key2 => value2,
  key3 => value3
}

# What we just showed you was hash literal notation, because you literally describe what you want in the hash: 
# you give it a name and you set it equal to one or more key => value pairs inside curly braces.
# You can also create a hash using Hash.new, like so: -the same as setting the variable equal to empty curly braces ({}).

pets = Hash.new
pets["Stevie"] = "cat"

# Adds the key "Stevie" with the value "cat" to the hash, oh now you have a KEY-VALUE>?

# You can access values in a hash just like an array.

pets = {
  "Stevie" => "cat",
  "Bowser" => "hamster",
  "Kevin Sorbo" => "fish"
}

puts pets["Stevie"]
# will print "cat"

# another ex:

friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }

# When we loop over an array or a hash, we say that we iterate over it.

numbers = [1, 2, 3, 4, 5]
numbers.each { |element| puts element }
 
# In the example above, we create an array called numbers with 5 elements.
# Then we say, "Take this array and for each element, print it to the console." 
# As usual, we can use any placeholder name for the bit between two | | characters.

# Now let's see how to iterate over a multidimensional array. --- a nested .each ---

s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each { |sub_array| sub_array.each { |element| puts element }}
=begin
returns ham
swiss
turkey
cheddar
roast beef
gruyere
=end

# When iterating over hashes, we need two placeholder variables to represent each key/value pair.

# you have already created a new hash restaurant_menu
restaurant_menu.each do |item, price|
  puts "#{item}: #{price}"
end






