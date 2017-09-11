=begin

While we won't be building a real VM, in this project, we'll use Ruby classes to create our own imaginary computer 
that stores data!

In this project, we'll use our newfound knowledge to create a class, Machine, 
and generate instances of that class that can manipulate imaginary files for us.

-begin-
Update initialize to take two parameters, username and password. 
In the body of initialize, set the instance variables @username and @password (respectively) to these parameters.

In your initialize method, you'll also want to create a @files instance variable and set this to an empty hash. 
This is so we can keep track of our files later!

class Computer
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
  end
end

1. Add a class variable called @@users to your Computer class. Set it equal to an empty hash.
In your initialize method, set @@users[username] = password 
so that your @@users hash keeps usernames as keys with each username's password as the associated value.

class Computer
   @@users = {}
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
   @@users[username] = password
  end
end

1. Inside your Computer class, define a method called create with a single parameter, filename.
Inside create, declare a variable called time and set it equal to the current time (using Time.now).
Next, inside create, add a new key/value pair to the @files hash. Use the filename key to store the value time.
For the final step in create, please puts a message telling the user that a new file was created. 
Feel free to put in any information you like; the one we used in exercise 1 printed the filename, the username, and the time.

class Computer
   @@users = {}
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
   @@users[username] = password
  end
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "the new file: #{filename} was created by #{@username} at #{time}."
  end
end


Perfect! Now that we think of it, though, we could have a whole bunch of users creating files every which where, 
and we don't have a way of getting to our @@users class variable! We'll need to create a method to reach it.
Because @@users is a class variable, we'll use a class method to grab it. Most of the methods you've seen so far 
are instance methods—they work on a particular instance/object, such as "matz" or "blixy". A class method belongs to the class 
itself, and for that reason, it's prefixed with the class name.

class Machine
  def Machine.hello
    puts "Hello from the machine!"
  end
end

 def Computer.get_users
    @@users
  end
end

Feel free to play around with your class. What if you add a method that updates files? Or deletes them? 
What if you want to add additional parameters to initialize or create?




=end

