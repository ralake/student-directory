def input_students
  puts "Please enter the name of a student".center(70)
  puts "To finish, just hit return twice.".center(70)

  students = []
  name = gets.chomp

  while !name.empty? do
  	# Get cohort and nationality info from user, shovel to students array and puts confirmation
  	puts "Enter #{name}'s cohort month".center(70)
  	cohort = gets.chomp
  	puts "Enter #{name}'s nationality".center(70)
  	nationality = gets.chomp
  	list = Hash.new("Unknown")
  	list[:name] = name; list[:cohort] = cohort; list[:nationality] = nationality
  	students << list
  	if students.length == 1
  		puts "Now we have #{students.length} student.".center(70)
  	else	
  		puts "Now we have #{students.length} students.".center(70)
  	end
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
	# Selects pupils starting in October and prints them only
	puts "October Cohort".center(70)
	students.each {|pupil| pupil.each {|k, v| if v == "October" then puts "#{pupil[:name]}".center(70) end}}
=begin
--- Attempt to sort through hashes to find those not in october cohort - prints incorrect data and repeats thereof. Work on this.
puts "Other Future Cohorts".center(70)
students.each {|maker| maker.each {|key, value| if value != "October" then puts "#{pupil[:name]}".center(70) end}
=end
end

def print_footer(names)
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




