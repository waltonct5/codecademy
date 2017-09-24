=begin
Now that we can direct our program using if / else statements, 
we can produce different results based on different user input.
In this project, we'll combine control flow with a few new Ruby string methods 
to Daffy Duckify a user's string, replacing each "s" with "th".

Downcase!
We want to make sure we capture both "S" and "s" in the user's input. 
We could write separate if / else statements to handle this, 
but we can also use .downcase! to convert the user's input to all lower case. 
That way, we only have to search for "s".

*Make sure to include the ! so that the user's string is modified in-place; 
otherwise, Ruby will create a copy of user_input and modify that instead.
=end

# To check whether user input vontains an "s"
# .include? method will evaluate to true if it finds what it's looking for and false otherwise.

print "Pleathe enter a thtring: " 
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  print "This string has an s."
end

print "Pleathe enter a thtring: " 
user_input = gets.chomp
user_input.downcase!


# When we find "s", we want Ruby to replace every instance of "s" it finds with "th". 
# We can do this with the .gsub! method, which stands for global substitution.
# syntax = string_to_change.gsub!(/s/, "th")

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
else print "there are no /s/s in the string."
end

# puts statement uses string interpolation to show the user their transformed string.
puts "Here is your translation: #{user_input}"

=begin
Add an additional if statement to re-prompt the user for input if they don't enter anything
Think about how you might account for words in which the letter "c" sounds like an "s"
Think about how you might preserve the user's original capitalization
=end
