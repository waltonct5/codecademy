# Blocks Are Like Nameless Methods
# Blocks can be defined with either the keywords DO and END or with curly braces ({}).
# However, the block that we define (following .each) will only be called once, 
# and in the context of the array that we are iterating over.

# Passing a block to a method is a great way of abstracting certain tasks from the method 
# and defining those tasks when we call the method. 

my_array = [3, 4, 8, 7, 1, 6, 5, 9, 2]

# Call the sort! method on my_array below.
# my_array should then equal [1, 2, 3, 4, 5, 6, 7, 8, 9].

my_array = my_array.sort!

=begin

We can also use a new operator called the combined comparison operator to compare two Ruby objects. 
The combined comparison operator looks like this: <=>. 
It returns 0 if the first operand (item to be compared) equals the second, 
1 if the first operand is greater than the second, and -1 if the first operand is less than the second.

A block that is passed into the sort method must return either 1, 0, or -1. 
It should return -1 if the first block parameter should come before the second, 1 if vice versa, 
and 0 if they are of equal weight, meaning one does not come before the other (i.e. if two values are equal)

The sort method assumes by default that you want to sort in ascending order, 
but it accepts a block as an optional argument that allows you, the programmer, 
to specify how two items should be compared.

=end

# Sort your books in descending order: no matter how many i believe,,,
books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]
books.sort! { |firstBook, secondBook| secondBook <=> firstBook }





