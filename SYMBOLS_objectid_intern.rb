# Recall that hashes are collections of key-value pairs, where a unique key is associated with some value. 
# Remember that keys must be unique, but values can repeat. 


# We can also iterate over hashes using the .each method. For example, we could do

my_hash.each do |key, value|
  puts my_hash[]
end

# This will print out a list of keys and values from my_hash, each on its own line.
# 1. Iterate over the matz hash and print each value to the console using puts.

matz = { "First name" => "Yukihiro",
  "Last name" => "Matsumoto",
  "Age" => 47,
  "Nationality" => "Japanese",
  "Nickname" => "Matz"
}
matz.each do |key, value|
  puts matz[key]
end

# f you create your hash using the Hash.new syntax, you can specify a default like so:

my_hash = Hash.new("Trady Blix")

# You can think of a Ruby symbol as a sort of name. It's important to remember that symbols aren't strings:

"string" == :string # false

# The .object_id method gets the ID of an object—it's how Ruby knows whether two objects are the exact same object. ie Run the code in the editor to see that the two "strings" are actually different objects, whereas the :symbol is the same object listed twice.

my_first_symbol = :valid_symbol
# Symbols pop up in a lot of places in Ruby, but they're primarily used either as hash keys or for referencing method names.
# Symbols make good hash keys for a few reasons:
# They're immutable, meaning they can't be changed once they're created;
# Only one copy of any symbol exists at a given time, so they save memory;
# Symbol-as-keys are faster than strings-as-keys because of the above two reasons.

symbol_hash = {
  :one => 1,
  :two => 2,    # Fill in these two blanks!
  :three => 3,
}
# ex We have an array of strings we'd like to later use as hash keys, but we'd rather they be symbols.

# Create a new variable, symbols, and store an empty array in it.
# Use .each to iterate over the strings array.
# For each s in strings, use .to_sym to convert s to a symbol and use .push to add that new symbol to symbols.
# Print the symbols array.

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# Add your code below!
symbols = []
strings.each do |s|
  symbols.push(s.to_sym)
end
print symbols

# .intern ==> This will internalize the string into a symbol and works just like .to_sym:

# Let's build a hash from the ground up using symbols as keys.
# We know how to grab a specific value from a hash by specifying the associated key, but what if we want to filter a hash for values that meet certain criteria? For that, we can use .select.

grades = { alice: 100,
  bob: 92,
  chris: 95,
  dave: 97
}

grades.select { |name, grade| grade <  97 }
# ==> { :bob => 92, :chris => 95 }

grades.select { |k, v| k == :alice }
# ==> { :alice => 100 }

# Create a new variable, good_movies, and set it equal to the result of calling .select on movie_ratings, selecting only movies with a rating strictly greater than 3.
movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
# Add your code below!
good_movies = movie_ratings.select { |m, r| r > 3 }

# Ruby includes two hash methods, .each_key and .each_value, that do exactly what you'd expect:

my_hash.each_key { |k| print k, " " }
# ==> one two three

movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 3,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
# Add your code below!

movie_ratings.each_key { |title| puts title }
# => prints titles only
