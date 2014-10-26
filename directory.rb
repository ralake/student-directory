@students = []

require 'csv'

def input_students
  puts "Please enter the name of a student".center(70)
  puts "To finish, just hit return twice.".center(70)

  name = gets.strip

  while !name.empty? do
  	puts "Enter #{name}'s cohort month".center(70)
  	cohort = gets.strip
  	#Ask makers teachers about default value for hash instead of using this if statement. Can't figure it out
  	if cohort == "" then cohort = "Unknown" end
    add_to_list(name, cohort)
  	if @students.length == 1
  		puts "Now we have #{@students.length} student.".center(70)
  	else	
  		puts "Now we have #{@students.length} students.".center(70)
  	end
  	name = gets.strip
  end
  @students
end

def add_to_list(name, cohort)
	new_student = {}
	new_student.default = "Unknown"
	new_student[:name] = name
	new_student[:cohort] = cohort
	@students	<< new_student
end

def print_header
  puts "The Students of Makers Academy".center(70)
  puts "------------------------------".center(70)
end

def october_cohort
  puts "October Cohort".center(70)
  @students.each do |maker|
    maker.each {|k, v| if v == "October" then puts "#{maker[:name]}".center(70) end}
  end
end

def other_cohorts
  puts "Other Cohorts".center(70)
  @students.each do |maker|
    unless maker.has_value?("October") then puts "#{maker[:name]} - #{maker[:cohort]} cohort".center(70) end
  end
end

def print_students_list
	if @students.length >= 1
	  october_cohort
    puts "\n"
    other_cohorts
  else
    puts "NO STUDENTS ENTERED".center(70)
  end
end

def print_footer
  puts "------------------------------".center(70)
	if @students.length == 1
  	puts "Overall, we have #{@students.length} future maker".center(70)
  else
  	puts "Overall, we have #{@students.length} future makers\n".center(70)
  end
end

def print_menu
	puts "- - -STUDENT DIRECTORY- - -".center(70)
  puts "1. Input students".center(70)
  puts "2. Show students".center(70)
  puts "3. Save the students list to file".center(70)
  puts "4. Load the students list from file".center(70)
  puts "9. Exit".center(70)
end

def show_students
  print_header
  print
  print_footer
end

def process(selection)
  case selection
    when "1"
      @students = input_students
    when "2"
      print_header
      print_students_list
      print_footer
    when "3"
      save_students
    when "4"
    	load_students
    when "9"
      exit
    else
      puts "I don't know what you meant, try again.".center(70)
  end
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end  
end

def save_students
	puts "Which file do you want to save to?"
	choice = gets.chomp
	CSV.open(choice, "w") {|list| @students.each do |student| student_data = [student[:name], student[:cohort]]; list.puts student_data end}
end

def load_students
	puts "Which file would you like to load from?"
	choice = gets.chomp
	CSV.foreach(choice) do |row|
		name , cohort = row[0], row[1]
		add_to_list(name, cohort)
	end
end


interactive_menu





