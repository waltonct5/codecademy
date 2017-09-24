=begin

DATA STRUCTURES
For Loop
When you provide a set of instructions in a method, you might find that a common task is to manipulate an entire set of data. 
Java conveniently provides control statements to run a task repeatedly. The control statement we will explore is called the 
for loop.

The for loop repeatedly runs a block of code until a specified condition is met.

The example below shows how a for loop is used:

for (int counter = 0; counter < 5; counter++) {

    System.out.println("The counter value is: " + counter);

}

The statements within the parentheses of for loop compose the following parts:
1. Initialization: the int variable named counter is initialized to the value of 0 before the loop is run.
2. Test condition: the Boolean expression counter < 5 is a conditional statement that is evaluated before the code 
inside the control statement is run every loop. If the expression evaluates to true, the code in the block will run. 
Otherwise, if the expression evalutes to false, the for loop will stop running.

3. Increment: Each time the loop completes, the increment statement is run. 
The statement counter++ increases the value of counter by 1 after each loop.

In the example above, the for loop initially executes the code block in the sample 
code above because the initial value of counter is less than 5, which passes the test condition.

The value of counter is then incremented by 1 in the increment.

The code block will execute again because counter is still less than 5. 
This cycle will continue until counter is no longer less than 5.


=end



import java.util.*;

public class Olympics {

	public static void main(String[] args) {

		//Some Olympic sports 

		ArrayList<String> olympicSports = new ArrayList<String>();
		olympicSports.add("Archery");
		olympicSports.add("Boxing");
		olympicSports.add("Cricket");
		olympicSports.add("Diving");

		System.out.println("There are " + olympicSports.size() + " Olympic sports in this list. They are: ");

		for (String sport: olympicSports) {
			System.out.println(sport);
		}

		//Host cities and the year they hosted the summer Olympics

		HashMap<String, Integer> hostCities = new HashMap<String, Integer>();

		hostCities.put("Beijing", 2008);
		hostCities.put("London", 2012);
		hostCities.put("Rio de Janeiro", 2016);

		for (String city: hostCities.keySet()) {
			
			if (hostCities.get(city) < 2016) {

				System.out.println(city + " hosted the summer Olympics in " + hostCities.get(city) + ".");

			} else {

				System.out.println(city + " will host the summer Olympics in " + hostCities.get(city) + ".");

			}
		}

	}

}
