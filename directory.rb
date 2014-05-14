def input_students
	puts "Please enter the names of students"
	puts "To finish, just hit return twice"

	students = []
	name = gets.chomp

	while !name.empty? do
		students << {:name => name, :cohort => :may}
		puts "Now we have #{students.length} students"
		name = gets.chomp
	end
	students
end

students = input_students
print_header
print(students)
print_footer(student)

# students = [
# 	{:name => "Roi Driscoll", :cohort => :may},
# 	{:name => "James Whyte", :cohort => :may},
# 	{:name => "Margherita Serino", :cohort => :may},
# 	{:name => "Vaidas Mykolaitis", :cohort => :may},
# 	{:name => "Johann Bornman", :cohort => :may},
# 	{:name => "Kate Hamilton", :cohort => :may},
# 	{:name => "James Kemp", :cohort => :may},
# 	{:name => "Nic Yeeles", :cohort => :may},
# 	{:name => "Julie Walker", :cohort => :may},
# 	{:name => "Will Allen", :cohort => :may},
# 	{:name => "Julia Tan", :cohort => :may},
# 	{:name => "Federico Maffei", :cohort => :may},
# 	{:name => "Jamie Patel", :cohort => :may},
# 	{:name => "Faezrah Rizalman", :cohort => :may},
# 	{:name => "Josh Fail-Broon", :cohort => :may},
# 	{:name => "Sasha Cooper", :cohort => :may},
# 	{:name => "Nicolai DTH", :cohort => :may},
# 	{:name => "Nadav Matalon", :cohort => :may},
# 	{:name => "Fitsum Teklehaimanot", :cohort => :may}
# ]

def print_first_sentence
	puts "The students of my cohort at Makers Academy"
	puts "-------------"
end

def print_student_names(students)
	students.each do |student|
  	puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

print_first_sentence
print_student_names(students)
print_footer(students)