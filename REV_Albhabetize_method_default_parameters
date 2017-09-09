# ORDERING YOUR LIBRARY - creating methods
# We noticed in the last lesson that .sort! didn't have a built-in way of handling sorting in reverse alphabetical order. 
# Now that we know how to write our own Ruby methods, we can fix that!


# First, we'll need to define our alphabetize method.
# What this does is tell Ruby that alphabetize has a second parameter, 
# rev (for "reverse") that will default to false if the user doesn't type in two arguments.

# def alphabetize(arr, rev=false)

# remember: In Ruby, there are two sorting methods, .sort or sort!. The first method, .sort, simply returns a sorted 
# array while leaving the original array alone. The second method, .sort!, modifies the actual array.
# Inside your method, add a line that calls .sort! on the arr array. Since it is the last line of the method, the sorted array will be returned.
# Now test your work! After your method, make a new array called numbers that contains a few numbers like the example above.
# Call your alphabetize method with your numbers array as the parameter and puts the result to the console.

# arr.sort!
# end

# numbers = [6, 8, 0, 4, 2]

# puts alphabetize(numbers)
# returns => [0, 2, 4, 6, 8]

# Sorting With Control Flow
# After your .sort! call, add an if-else statement. If rev is true, call reverse! on arr, else return arr.

def alphabetize(arr, rev=false)
arr.sort!
  if rev == true
    arr.reverse!
    else
    return arr
  end
end
numbers = [6, 8, 0, 4, 2]

puts alphabetize(numbers)

# Building your own methods is great for using code over and over without having to retype things, but it's also great for abstracting or simplifying your program

