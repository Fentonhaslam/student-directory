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
def print_header
    puts "The students of Villains Academy"
    puts "-------------------"
end
def print(names)
  names.each do |name|
    puts name
  end
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
# Nothing happens until we call the mehtods created.

print_header
print(students)
print_footer(students)
