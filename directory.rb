@students = [] # an empty array accessible to all methods

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-------------"
end

def print_students_list
  @students.each_with_index do |student, i|
  	puts "#{i + 1}. #{student[:name]} (#{student[:cohort]} cohort)" 
  end
end

# def print_student_names(students)
# 	counter = 0

# 	until counter == students.count do
# 		person = students[counter]
# 		puts "Their name is #{person[:name]} and they're in the #{person[:cohort]} cohort"
# 		counter += 1
# 	end
# end

def print_footer
	puts "Overall, we have #{@students.length} great students"
end

def input_students
	print "Please enter the names of students\nTo finish, just hit return twice\n"
	
	name = STDIN.gets.chomp
	while !name.empty? do
		@students << { :name => name, :cohort => :may }
		puts "Now we have #{@students.length} students"
		name = STDIN.gets.chomp
	end
end

# def students_starting_with(students, letter)
# 	students.select {|student| student[:name].start_with?(letter) }
# end

# def students_with_names_shorter_than(students, length)
# 	students.select {|student| student[:name].length < length }
# end

def print_menu
	puts "1. Input the students"
	puts "2. Show the students"
	puts "3. Save the list to students.csv"
	puts "4. Load the list from students.csv"
	puts "9. Exit"
end

def show_students
	print_header
	print_students_list
	print_footer
end

def process(selection)
  case selection 
	when "1"
		input_students
	when "2"
		show_students
	when "3"
		save_students
	when "4"
		load_students
	when "9"
		exit
	else
		puts "I don't know what you meant, try again"
  end
end

def interactive_menu
	loop do
		print_menu
		process(STDIN.gets.chomp)
	end
end

def save_students
	# open the file for writing
	file = File.open("students.csv", "w")
	# iterate over the array of students
	@students.each do |student|
		student_data = [student[:name], student[:cohort]]
		csv_line = student_data.join(",")
		file.puts csv_line
	end
	file.close
end

def add_student(name, cohort)
	@students << {:name => name, :cohort => cohort.to_sym}
end

def load_students(filename = "students.csv")
	file = File.open(filename, "r")
	file.readlines.each do |line|
	  name, cohort = line.chomp.split(',')
	  add_student(name, cohort)
    end
    file.close
end

def try_load_students 
	filename = ARGV.first # first arguement from the command line
	return if filename.nil? # get out of the method if it isn't given
	if File.exists?(filename) # if it exists
		load_students
		puts "Loaded #{@students.length} from #{filename}"
	else # if it doesn't exist
		puts "Sorry, #{filename} doesn't exist."
		exit # quit the program
	end
end


# students = input_students
# students_starting_with_a = students_starting_with(students, 'A')
# students_with_short_names = students_with_names_shorter_than(students_starting_with_a, 12)

# print_header
# print_student_names(students_with_short_names)
# print_footer(students)

try_load_students
interactive_menu