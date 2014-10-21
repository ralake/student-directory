# puts students into an array
students = [
{:name => "Karin Nielsen", :cohort => :october},
{:name => "Christopher Batts", :cohort => :october},
{:name => "Nick Dyer", :cohort => :october},
{:name => "Edward Byne", :cohort => :october},
{:name => "Alex Blease", :cohort => :october},
{:name => "Ben Hutchinson", :cohort => :october},
{:name => "Victoria Stepanovna", :cohort => :october},
{:name => "Ayo Obembe", :cohort => :october},
{:name => "Yvette Cook", :cohort => :october},
{:name => "Pavel Redics", :cohort => :october},
{:name => "Dale Stevens", :cohort => :october},
{:name => "Alan Bridger", :cohort => :october},
{:name => "Clare Trembath", :cohort => :october},
{:name => "Denise Yu", :cohort => :october},
{:name => "Ella Schofield", :cohort => :october},
{:name => "Tim Scully", :cohort => :october},
{:name => "Izzy Markwick", :cohort => :october},
{:name => "Simon Lange", :cohort => :october},
{:name => "[Mishal I", :cohort => :october},
{:name => "Georgia Amici", :cohort => :october},
{:name => "Claudia B", :cohort => :october},
{:name => "Chris Handley", :cohort => :october}
]

def print_header
  puts "The students of Makers Academy"
  puts "--------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.length} future makers"
end

print_header
print(students)
print_footer(students)

