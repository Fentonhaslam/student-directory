@students = []
# Let's put all the students in an array
def input_students
  puts "Please enter the names of the students"
  puts "To finish, hit return twice"
  # create an empty array
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array.
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    # get another name
    name = gets.chomp
  end
  # return array of students
  @students
end

# first we print the list of students
def print_header
    puts "The students of Villains Academy"
    puts "-------------------"
end

def print_students_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def show_students
  print_header
  print_students_list
  print_footer
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "9"
     exit
   else
     puts "I don't know what you meant, try again"
   end
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

interactive_menu
