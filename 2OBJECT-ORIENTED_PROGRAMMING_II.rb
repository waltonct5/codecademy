=begin

 when other people are working on or using your programs, they may attempt to muck around 
 with the way different parts of your program do their jobs. You don't want that!

For this reason, Ruby allows you to explicitly make some methods public and others private. 
Public methods allow for an interface with the rest of the program; they say, 
"Hey! Ask me if you need to know something about my class or its instances."

Private methods, on the other hand, are for your classes to do their own work undisturbed. 
They don't want anyone asking them anything, so they make themselves unreachable!

1. First, create a class named Dog
Create a method initialize within your class Dog.
Allow your initialize method to accept two parameters, name and breed.
Inside your initialize method assign those two parameters to the variables @name and @breed respectively
2. For now, let's add a public method called bark to Dog. The bark method should puts "Woof!".

class Dog
  public
   def bark
      puts "Woof!"
    end
  def initialize(name, breed)
    @name = name
    @breed = breed
  end
end

Again, private methods are just that: they're private to the object where they are defined. 
This means you can only call these methods from other code inside the object. 
Another way to say this is that the method cannot be called with an explicit receiver. 
You've been using receivers all along—these are the objects on which methods are called! 
Whenever you call object.method, object is the receiver of the method.

-In order to access private information, we have to create public methods that know how to get it. 
This separates the private implementation from the public interface, and we'll go over this in more detail 
in the next two exercises.-

3. Add a private method called id to Dog. The id method should create @id_number instance variable and set it equal to 12345.

class Dog
  private
  def id
    @id_number = 12345
    
    
=== attr_reader, attr_writer ===

We saw in the lesson on classes that Ruby needs methods in order to access attributes. 
For instance, if we want to access a @name instance variable, we had to write something like

def name
  @name
end
Well, no longer! We can use attr_reader to access a variable and attr_writer to change it. If we write

class Person
  attr_reader :name
  attr_writer :name
  def initialize(name)
    @name = name
  end
end

Ruby does something like this for us automatically:

def name
  @name
end

def name=(value)
  @name = value
end

Like magic, we can read and write variables as we please! We just pass our instance variables (as symbols) 
to attr_reader or attr_writer.

(That name= might look funny, but you're allowed to put an = sign in a method name. 
That's just a Ruby convention saying, "hey, this method sets a value!"


==== attr_accessor ====
If we want to both read and write a particular variable, there's an even shorter shortcut than using 
attr_reader and attr_writer. We can use attr_accessor to make a variable readable and writeable in one fell swoop.

==== What's a Module? ====

There are lots and lots of Ruby tools you might want to use, but it would clutter the interpreter to keep them around 
all the time. For that reason, we keep a bunch of them in modules and only pull in those module toolboxes when we need 
the constants and methods inside!

You can think of modules as being very much like classes, only modules can't create instances and can't have subclasses. 
They're just used to store things!

Modules are super easy to make! You just use the module keyword, like so:

module ModuleName
  # Bits 'n pieces
end

It doesn't make sense to include variables in modules, since variables (by definition) change (or vary). Constants, however, 
are supposed to always stay the same, so including helpful constants in modules is a great idea.
* Ruby constants are written in ALL_CAPS and are separated with underscores if there's more than one word.
 * An example of a Ruby constant is PI, which lives in the Math module 
 
 ==== NAMESPACING ====
 One of the main purposes of modules is to separate methods and constants into named spaces. 
 This is called (conveniently enough) namespacing, and it's how Ruby doesn't confuse Math::PI and Circle::PI.
 :: = scope resolution operator, which is a fancy way of saying it tells Ruby where you're looking for a specific bit of code.
 * If we say Math::PI, 
 Ruby knows to look inside the Math module to get that PI, not any other PI (such as the one we created in Circle)
 
 ==== REQUIRE ====
 Some modules, like Math, are already present in the interpreter. Others need to be explicitly brought in, 
 however, and we can do this using require.
 
 require 'module'
 puts 'module'.method
 
 ==== INCLUDE ====
 Any class that includes a certain module can use those module's methods!
 
include MATH

* Since everything has been pulled in, you can simply write PI instead of Math::PI.
 
What we did in the last exercise might not have seemed strange to you, but think about it: 
we mixed together the behaviors of a class and a module!

When a module is used to mix additional behavior and information into a class, it's called a mixin. 
Mixins allow us to customize a class without having to rewrite code!
 
Now you understand why we said mixins could give us the ability to mimic inheriting from more than one class: 
by mixing in traits from various modules as needed, we can add any combination of behaviors to our classes we like!
 
On the first line inside Ninja and the first line inside Samurai, include MartialArts to mix this into 
both the Ninja and Samurai classes, thereby giving them the swordsman method. 

# Create your module here
module MartialArts
  def swordsman
    puts "I'm a swordsman."
  end
end


class Ninja
include MartialArts
  def initialize(clan)
    @clan = clan
  end
end

class Samurai
include MartialArts
  def initialize(shogun)
    @shogun = shogun
  end
end

==== EXTEND ====
Whereas include mixes a module's methods in at the instance level 
(allowing instances of a particular class to use the methods), the extend keyword mixes a module's methods at the class level.
This means that class itself can use the methods, as opposed to instances of the class.



# ThePresent has a .now method that we'll extend to TheHereAnd

module ThePresent
  def now
    puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
  end
end

class TheHereAnd
  extend ThePresent
end

TheHereAnd.now


Finally, let's include our Languages module in the Master class (on line 6) so that our favorite language gets printed 
to the console.

module Languages
  FAVE = "Ruby"  # This is what you typed before, right? :D
end

class Master
include Languages
  def initialize; end
  def victory
    puts FAVE
  end
end

total = Master.new
total.victory
=end
