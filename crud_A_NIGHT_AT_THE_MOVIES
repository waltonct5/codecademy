=begin

Let's start by creating a program that will keep track of our movie ratings.
It'll do one of four things: add a new movie to a hash, update the rating for an existing movie, 
display the movies and ratings that are already in the hash, or delete a movie from the hash. 
If it doesn't receive one of those four commands, the program will output some kind of error message.

=end

# First things first: let's create a hash to hold our movies and their ratings, 
# and let's prompt the user for input so we can eventually store movie/ratings pairs in our hash.

movies = {
  grinch: 8
  }
puts "enter movie:"
choice = gets.chomp

=begin
Now we'll want to create the main body of our program: the case statement, 
which will decide what actions to take based on what the user types in. 
(we can get bogged down in ifs and elsifs if we have a lot of conditions to check)

case language
  when "JS"
    puts "Websites!"
  when "Python"
    puts "Science!"
  when "Ruby"
    puts "Web apps!"
  else
    puts "I don't know!"
end

The else is what the case statement will do if it doesn't match any of its when statements to the case 
(in this case, the value of language).

ADD FEATURE
Call .to_sym on your title and .to_i on your rating so that your movie titles are stored as symbols in the hash 
and the associated ratings are stored as integers.

>Ruby's .to_sym method can convert a string to a symbol, and .to_i will convert a string to an integer.

We're nearly done with the "add" part of our case. The final thing we'll want to do is perform a check to see whether the movie to be added is already in the hash.

To do this, we'll add an if/else statement.

Add an if/else statement to the add branch of your case. If the movie isn't already in the hash 
(that is, if movies[title.to_sym] is nil), it should add the movie/rating pair; otherwise, 
it should puts that the movie already exists and not add anything to the hash. Make sure to test it!

 title = gets.chomp
  if movies[title.to_sym].nil?
  puts "rating plz: "
  rating = gets.chomp
  movies[title.to_sym] = rating.to_i 
  puts "#{title} has been added with a rating of #{rating}."
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
  

UPDATE FEATURE 
Prompt the user for a movie title. Store it in title.

If the movies[title] is nil, then the movie is not in the hash. 
Please puts a string telling the user of their error.

Otherwise (else), we need to update the movies hash. Prompt the user for a new rating. 
Set the movie's rating to that new value.
 
  when "update"
    puts "Plz title: "
  title = gets.chomp
  if movies[title].nil?
    puts "That movie is not stored!"
    else 
    puts "new rating plz: "
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
  end

DISPLAY FEATURE
First, remove the puts "Movies!" when the user types "display".
Next, iterate through the hash using .each and puts each movie/rating pair. The format should be "#{movie}: #{rating}.

DELETE FEATURE
This part of our case statement will remove whatever key the user specifies from the hash
Ruby makes it easy to remove a movie/rating pair from our hash: we just write movies.delete(title)!

The four verbs your program knows—add, display, update, and delete—are universal. This acronym is better known as 
CRUD for create, read, update, and delete (respectively). These are the actions you take when you update an entry in a 
database, ask a website for information, or write a blog post. Being familiar with this setup is good, because you'll 
see it in everything from API calls to web frameworks like Ruby on Rails.

=end


movies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp.downcase
case choice
when 'add'
  puts "What movie do you want to add?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What's the rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when 'update'
  puts "What movie do you want to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    puts "What's the new rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with new rating of #{rating}."
  end
when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when 'delete'
  puts "What movie do you want to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been removed."
  end
else
  puts "Sorry, I didn't understand you."
end
