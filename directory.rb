student_count = 11
# Let's put all the students in an array
students = [
  "Dr. Hannibal Lecter",
  "Darth Vadar",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex Delarge",
  "the wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]

# first we print the list of students
puts "The students of Villains Academy"
puts "-------------------"
students.each do |student|
  puts student
end
# finally, we print the total number of students
puts "Overall, we have #{students.count} great students"
# it's important that print() doesn't add new line characters
