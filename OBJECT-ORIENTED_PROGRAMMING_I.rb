=begin

Class Syntax
A basic class consists only of the class keyword and the name of the class. Check it out:

    class NewClass
      # Class magic here
    end
    
Our NewClass has the ability to create new Ruby objects of class NewClass (just like "Hello!" is a String and 4 is a Fixnum). 
By convention, class names start with a capital letter and use CamelCase instead of relying_on_underscores.

Go ahead and define an initialize method for your Person class. No need to put anything in the method body just yet.

class Person
end

def initialize
end

In Ruby, we use @ before a variable to signify that it's an instance variable. 
This means that the variable is attached to the instance of the class.

class Car
  def initialize(make, model) 
    @make = make
    @model = model
  end
end

kitt = Car.new("Pontiac", "Trans Am")
The code in the example above creates an instance, kitt, of the class Car. kitt has his own @make ("Pontiac") and @model ("Trans Am"). 
Those variables belong to the kitt instance, which is why they're called instance variables.

1. Give your initialize method a single parameter, name. In the body of your method, set @name = name.
* This tells Ruby that whenever it creates a Person, it has to have a name, and each instance of Person will have its own @name.


class Person
def initialize(name)
  @name = name
end
end

Perfect! Now we're ready to start creating objects

We can create an instance of a class just by calling .new on the class name, like so:

me = Person.new("Eric")

When dealing with classes, you can have variables that are available everywhere (global variables), 
ones that are only available inside certain methods (local variables), 
others that are members of a certain class (class variables), 
and variables that are only available to particular instances of a class (instance variables).

The same goes for methods: some are available everywhere, some are only available to members of a certain class, 
and some are only available to particular instance objects.
** The scope of a variable is the context in which it's visible to the program. **

See how some variables start with $, @, or @@? This helps mark them as global, instance, and class variables (respectively)

Class variables are like instance variables, but instead of belonging to an instance of a class, they belong to the class itself. Class variables always start with two @s, like so: @@files.

Global variables can be declared in two ways. The first is one that's already familiar to you: 
you just define the variable outside of any method or class, and voilà! It's global. 
If you want to make a variable global from inside a method or class, just start it with a $, like so: $matz.

The variable my_variable is inside a class, so it's not reachable by the puts method outside it. 
But you can fix this! Use either of the two global variable tricks mentioned above.

class MyClass
  $my_variable = "Hello!"
end

puts $my_variable

we can use a class variable to keep track of the number of instances of that class we've created. Let's do that now!

class Person
  # Set your class variable to 0 on line 3
  @@people_count = 0
  
  def initialize(name)
    @name = name
    # Increment your class variable on line 8
    @@people_count += 1
  end
  
  def self.number_of_instances
    # Return your class variable on line 13
    return @@people_count
  end
end

matz = Person.new("Yukihiro")
dhh = Person.new("David")

puts "Number of Person instances: #{Person.number_of_instances}"
# => Number of Person instances: 2


Inheritance is the process by which one class takes on the attributes and methods of another, 
and it's used to express an is-a relationship. For example, a cartoon fox is a cartoon mammal, 
so a CartoonFox class could inherit from a CartoonMammal class.

Sometimes you'll want one class that inherits from another to not only take on the methods and attributes of its parent, 
but to override one or more of them.

Create a new class, Dragon, that inherits from Creature. Give your derived class a fight method that overrides Creature's; 
instead of returning "Punch to the chops!", it should return "Breathes fire!".

class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

# Add your code below!

class Dragon < Creature
  def fight
    return "Breathes fire!"
  end
end

You can directly access the attributes or methods of a superclass with Ruby's built-in super keyword.

The syntax looks like this:

class DerivedClass < Base
  def some_method
    super(optional args)
      # Some stuff
    end
  end
end

* When you call super from inside a method, that tells Ruby to look in the superclass of the current class 
and find a method with the same name as the one from which super is called. If it finds it, 
Ruby will use the superclass' version of the method.

Any given Ruby class can have only one superclass. Some languages allow a class to have more than one parent, 
which is a model called multiple inheritance.

However, there are instances where you want to incorporate data or behavior from several classes into a single class, 
and Ruby allows this through the use of mixins.  - will learn later

1.
After your class, create a variable called my_message.

Create an instance of your Message class using Message.new with whatever from and to arguments you want!

class Message 
  @@messages_sent = 0
  def initialize(from, to)
    @from = from 
    @to = to 
    @@messages_sent +=1 
  end
end

my_message = Message.new("Ian", "Alex")

=end

class Message 
  @@messages_sent = 0
  def initialize(from, to)
    @from = from 
    @to = to 
    @@messages_sent +=1 
  end
end

my_message = Message.new("Ian", "Alex")

class Email < Message
  def initialize(from, to)
    super
  end
end



