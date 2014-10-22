def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice."
  # Create an empty array
  students = []
  # Get the first name
  name = gets.chomp
  # While the name is is not empty repeat this code
  while !name.empty? do
  	# Add the student hash to the array
  	students << {:name => name, :cohort => :october}
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
	students.each do |student|
		if student[:name].include?("A")
			puts "#{student[:name]} (#{student[:cohort]} cohort)"
		else
		end
	end
end


def print_footer(names)
  puts "Overall, we have #{names.length} future makers"
end

students = input_students
print_header
print(students)
print_footer(students)


