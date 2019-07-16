student_count = 11
# Let's put all the students in an array
students = [
  { name: "Dr. Hannibal Lecter", cohort: :november },
  { name: "Darth Vadar", cohort: :november},
  { name: "Nurse Ratched", cohort: :november},
  { name: "Michael Corleone", cohort: :november},
  { name: "Alex Delarge", cohort: :november},
  { name: "the wicked Witch of the West", cohort: :november},
  { name: "Terminator", cohort: :november},
  { name: "Freddy Krueger", cohort: :november},
  { name: "The Joker", cohort: :november},
  { name: "Joffrey Baratheon", cohort: :november},
  { name: "Norman Bates", cohort: :november}
]

# first we print the list of students
def print_header
    puts "The students of Villains Academy"
    puts "-------------------"
end
def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
def input_students
  puts "Please enter the names of the students"
  puts "To finish, hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array.
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name
    name = gets.chomp
  end
  # return array of students
  students
end
# Nothing happens until we call the mehtods created.
students = input_students
print_header
print(students)
print_footer(students)
