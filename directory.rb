def input_students
  puts "Please enter the name of a student".center(70)
  puts "To finish, just hit return twice.".center(70)

  students = []
  name = gets.strip

  while !name.empty? do
  	# Get cohort and nationality info from user, shovel to students array and puts confirmation
  	puts "Enter #{name}'s cohort month".center(70)
  	cohort = gets.strip
  	puts "Enter #{name}'s nationality".center(70)
  	nationality = gets.strip
  	list = Hash.new
  	list[:name] = name; list[:cohort] = cohort; list[:nationality] = nationality
  	students << list
  	if students.length == 1
  		puts "Now we have #{students.length} student.".center(70)
  	else	
  		puts "Now we have #{students.length} students.".center(70)
  	end
  	# Get another name from the user
  	name = gets.strip
  end
  # Return the array of students
  students
end

def print_header
  puts "The Students of Makers Academy".center(70)
  puts "------------------------------".center(70)
end

def october_cohort(students)
  puts "October Cohort".center(70)
  students.each do |pupil|
    pupil.each {|k, v| if v == "October" then puts "#{pupil[:name]}".center(70) end}
  end
end

def other_cohorts(students)
  puts "Other Cohorts".center(70)
  students.each do |maker|
    unless maker.has_value?("October") then puts "#{maker[:name]} - #{maker[:cohort]} cohort".center(70) end
  end
end

def print(students)
	if students.length >= 1
	  october_cohort(students)
    puts "\n"
    other_cohorts(students)
  else
    puts "NO STUDENTS ENTERED".center(70)
  end
end

def print_footer(names)
  puts "------------------------------".center(70)
	if names.length == 1
  	puts "Overall, we have #{names.length} future maker".center(70)
  else
  	puts "Overall, we have #{names.length} future makers".center(70)
  end
end

students = input_students
print_header
print(students)
print_footer(students)




