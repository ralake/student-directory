@students = []

def input_students
  puts "Please enter the name of a student".center(70)
  puts "To finish, just hit return twice.".center(70)

  name = gets.strip

  while !name.empty? do
  	puts "Enter #{name}'s cohort month".center(70)
  	cohort = gets.strip
=begin
Trying to add string default to hash values if user doesn't input...
  	list = Hash.new("Unknown")
  	list[:name] = name; list[:cohort] = cohort; list[:nationality] = nationality
  	students << list
=end
    @students << {:name => name, :cohort => cohort}
  	if @students.length == 1
  		puts "Now we have #{@students.length} student.".center(70)
  	else	
  		puts "Now we have #{@students.length} students.".center(70)
  	end
  	name = gets.strip
  end
  @students
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
  	puts "Overall, we have #{@students.length} future makers".center(70)
  end
end

def print_menu
  puts "1. Input students".center(70)
  puts "2. Show students".center(70)
  puts "3. Save the students list to students.csv".center(70)
  puts "4. Load the students list from students.csv".center(70)
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
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def load_students
	file = File.open("students.csv", "r")
	file.readlines.each do |line|
		name, cohort = line.chomp.split(',')
			@students << {:name => name, :cohort => cohort}
	end
	file.close
end


interactive_menu





