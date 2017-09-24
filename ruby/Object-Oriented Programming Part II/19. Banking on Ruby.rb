=begin

Now that we know all about hiding information in Ruby, let's apply our new skills to 
write a program that can store, update, and display a bank account balance.

class Account
  attr_reader :name
  attr_reader :balance
  def initialize (name, balance=100)
    @name = name
    @balance = balance
  end
end

* balance=100 signifies an optional parameter. Ruby is saying that you can pass one or two arguments to initialize; 
if you pass two, it uses your balance argument to set @balance; if you only pass a name, balance gets a default value of 100, 
and that's what gets stored in @balance.

Let's go ahead and create our private methods. 
(It makes sense to create these first, since our public methods will rely on them.)

class Account
  private
  def pin
    @pin = 1234
  end
  private
  def pin_error
    return "Access denied: incorrect PIN."
  end
  
Now let's tackle the first public method, display_balance, which we'll use to display our current account balance.
  
public
  def display_balance(pin_number)
    if pin_number == @pin
      puts "Balance: $#{@balance}."
      else
      puts pin_error
    end
  end
  
Now let's add in our second public method, which will allow us to withdraw money from our account.

The trick to this one is to realize that since @balance can only be accessed from inside the class, 
we'll want to use @balance -= amount to decrease the balance by a certain amount.  
  
  
    public
  def withdraw(pin_number, amount)
    if pin_number == @pin
      @balance -= amount
      puts "Withdrew #{amount}. New balance: $#{@balance}."
      else
      puts pin_error
    end
  end
  
  Now we just need to create an instance of Account so we can go about our banking business.
  
   checking_account = Account.new("Checking", 500)
  
  You've got your very own Account class and checking_account instance, complete with public and private methods.
  
  
  How could you improve this class? You might:

Include a deposit method that lets users add money to their accounts
Include error checking that prevents users from overdrawing their accounts
Create CheckingAccounts or SavingsAccounts that inherit from Account

=end

class Account
  private
  def pin
    @pin = 1234
  end
  private
  def pin_error
    return "Access denied: incorrect PIN."
  end
  public
  def display_balance(pin_number)
    if pin_number == @pin
      puts "Balance: $#{@balance}."
      else
      puts pin_error
    end
  end
  public
  def withdraw(pin_number, amount)
    if pin_number == @pin
      @balance -= amount
      puts "Withdrew #{amount}. New balance: $#{@balance}."
      else
      puts pin_error
    end
  end
  attr_reader :name
  attr_reader :balance
  def initialize (name, balance=100)
    @name = name
    @balance = balance
  end
end
 checking_account = Account.new("Checking", 500)
