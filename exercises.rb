#Can you make the program do exactly what it does now without using any "puts" statement? What would be the alternative?
# We're using the each() method to iterate over an array of students. How can you modify the program to print a number before the name of each student, e.g. "1. Dr. Hannibal Lecter"? Hint: replace each() with each_with_index().
# "Modify your program to only print the students whose name begins with a letter "A" (or any other).
# Modify your program to only print the students whose name is shorter than 12 characters.
# Rewrite the each() method that prints all students using "while" or "until" control flow methods (see Ruby 2).
Our code only works with the student name and cohort. Add more information: hobbies, country of birth, height, etc.
Research how the method center() of the String class works. Use it in your code to make the output beautifully aligned.
In the input_students method the cohort value is hard-coded. How can you ask for both the name and the cohort? What if one of the values is empty? Can you supply a default value? The input will be given to you as a string? How will you convert it to a symbol? What if the user makes a typo?
Once you complete the previous exercise, change the way the users are displayed: print them grouped by cohorts. To do this, you'll need to get a list of all existing cohorts (the map() method may be useful but it's not the only option), iterate over it and only print the students from that cohort.
Right now if we have only one student, the user will see a message "Now we have 1 students", whereas it should be "Now we have 1 student". How can you fix it so that it used singular form when appropriate and plural form otherwise?
We've been using the chomp() method to get rid of the last return character. Find another method among those provided by the String class that could be used for the same purpose (although it will require passing some arguments).
Once you have completed the "Asking for user input" section, open this file. It's Ruby code but it has some typos. Copy it to a local file and open it in SublimeText without syntax highlighting. To do this, select "Plain Text" in the lower right corner of the window. It should look like this: rubysyntaxhighlighting Now, find all typos in that file and correct them. Use your experience, online documentation, etc. to find all mistakes. Run the script in the terminal from time to time to make sure it works as it should. Google the errors Ruby will give you, think about what they could mean, try different things but don't look the answer up :)
What happens if the user doesn't enter any students? It will try to print an empty list. How can you use an "if" statement (see Ruby 2) to only print the list if there is at least one student in there?