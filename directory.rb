student_count = 11
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

def interactive_menu
  loop do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    selection = gets.chomp
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit # this will cause the program to terminate
    else
      puts "I don't know what you meant, try again"
    end
  end
end
