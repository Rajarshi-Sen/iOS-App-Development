This assignment has two parts. In both parts, you will write code to look for primes in a small range; for example, display all primes less than a maximum of a few thousand.

Below is a rough verbal description of the algorithm you will implement (maxInt is the largest number to be considered for prime-ness) to look for primes:

•	create an array of maxInt booleans and initialize each to true.
•	for each number 2 to sqrt(maxInt), "cross out" all the multiples of that number (i.e. set them to false - they are not prime) in the array. So array[4] = false, array[6] = false... and then array[6] = false, array[9] = false...
•	when you are done, those array elements that are still true are primes (do not report 0 or 1 as prime).

Background
You will recall that a prime number is a number that cannot be divided evenly by any numbers other than itself and 1. So, for example, 5 is prime because it can only be divided by 5 and 1. 6 is not prime since it can be divided by 2 and 3 as well as by 6 and 1. 1 itself is not considered prime. The prime numbers less than 25 are: 2, 3, 5, 7, 11, 13, 17, 19, and
23.	Prime numbers are very interesting mathematically. The largest known prime has about 16 million digits. Google it and you will find out (too many) more amazing facts.

Part One: Use Xcode 9.1 or 9.2 to create a new playground, named “YourLastName_PrimesCoder”

Write Swift 4 code to find primes for a given integer greater than or equal to 25 using the provided algorithm.

Part Two: Use Xcode 9.1 or 9.2 to write a complete iPhone app project. Name your app with “YourLastName_PrimesFinder.” Your app will accept an integer number greater than or equal to 50 and use the provided algorithm to display the number of primes found and list all primes less than or equal to the accepted integer.

Note: Your app must pass iOS 11 simulator testing with iPhone 7/8 and portrait orientation.

Please make sure your app contains an app icon and meets the following requirements:
First View
•	Contains a meaningful view title.
•	Accept an integer 25 or above.
•	Dismiss the keyboard when tapping on the view.
•	Calculate and display the number of primes found.
•	Calculate and display primes in a textView. Do not show the keyboard when tapping on the textView.
•	Contains an Info Light button that takes your app user to a second view (About App.)
 
Second View
•	Contains “About App” as the view title.
•	Contains a description of what your app does in a textView.
•	Below the description, include a button titled “About Author”.
•	Clicking on the “About Author” button takes the user of your app to a third view (About Author.)

Third View
•	Contains your First and Last name as the view title.
•	Displays the content of your personal webpage that we worked on during week #2 of the semester.

Finally, your app must include your own app icon.

Remember, each assignment is graded based on the following factors:
•	Design and Output (70%)
•	Efficient Coding (20%)
•	Documentation of all view controllers and custom classes (10%)

When you are ready to submit, make sure both parts of your assignment are in one folder. Then compress the folder and submit the .zip file on Blackboard by the due date and time.

Got 97/100.
