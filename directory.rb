def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice."
  # Create an empty array
  students = []
  # Get the first name
  name = gets.chomp
  # While the name is not empty repeat this code
  while !name.empty? do
  	# Add the student hash to the array
  	puts "Enter the nationality of the student"
  	nationality = gets.chomp
  	students << {:name => name, :cohort => :october, :nationality => nationality}
  	puts "Now we have #{students.length} students."
  	# Get another name from the user
  	name = gets.chomp
  end
  # Return the array of students
  students
end

def print_header
  puts "The students of Makers Academy"
  puts "--------------"
end

def print(students)
	students.select {|student| puts "#{student[:name]}, (#{student[:nationality]})"}
end


def print_footer(names)
  puts "Overall, we have #{names.length} future makers"
end

students = input_students
print_header
print(students)
print_footer(students)


