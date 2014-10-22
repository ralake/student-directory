def input_students
  puts "Please enter the names of the students".center(70)
  puts "To finish, just hit return twice.".center(70)
  # Create an empty array
  students = []
  # Get the first name
  name = gets.chomp
  # While the name is not empty repeat this code
  while !name.empty? do
  	#Add cohort info to hash
  	puts "Enter the cohort month".center(70)
  	cohort = gets.chomp
  	puts "Enter the nationality of the student".center(70)
  	nationality = gets.chomp
  	students << {:name => name, :cohort => cohort, :nationality => nationality}
  	puts "Now we have #{students.length} students.".center(70)
  	# Get another name from the user
  	name = gets.chomp
  end
  # Return the array of students
  students
end

def print_header
  puts "The students of Makers Academy".center(70)
  puts "--------------".center(70)
end

def print(students)
	students.select {|student| puts "#{student[:name]}, #{student[:nationality]} (#{student[:cohort]} cohort)".center(70)}
end


def print_footer(names)
  puts "Overall, we have #{names.length} future makers".center(70)
end

students = input_students
print_header
print(students)
print_footer(students)


