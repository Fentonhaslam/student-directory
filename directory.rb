# Let's put all the students in an array
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

# Nothing happens until we call the mehtods created.
students = input_students
print_header
print(students)
print_footer(students)
