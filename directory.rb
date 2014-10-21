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
# Then we print them
puts "The students at Makers Academy"
puts "--------------"
students.each do |student|
  puts student
end
# Finally we print the total
puts "Overall, we have #{students.length} students."
