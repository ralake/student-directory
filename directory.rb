# puts students into an array
students = [
"Karin Nielsen",
"Christopher Batts",
"Nick Dyer",
"Edward Byne",
"Alex Blease",
"Ben Hutchinson",
"Victoria Stepanovna",
"Ayo Obembe",
"Yvette Cook",
"Pavel Redics",
"Dale Stevens",
"Alan Bridger",
"Clare Trembath",
"Denise Yu",
"Ella Schofield",
"Tim Scully",
"Izzy Markwick",
"Simon Lange",
"Mishal I",
"Georgia Amici",
"Claudia B",
"Chris Handley"
]

def print_header
  puts "The students of Makers Academy"
  puts "--------------"
end

def print(names)
  names.each do |name|
    puts name
  end
end

def print_footer(names)
  puts "Overall, we have #{names.length} future makers"
end

print_header
print(students)
print_footer(students)

