#let's put the students into an array
def input_students
  students = []

  puts "Please enter the names of the students."
  puts "To finish, hit return twice."

  name = gets.chomp

  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students."
    name = gets.chomp
  end
  #return the array of students  
  students
end  

def print_header
  puts "The students of Villains Academy".center(30)
  puts "-------------".center(30)
end

def print(students)
  if students.length > 0
    students.each.with_index do |student, index|
      puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)".center(30)
    end
  end  
end  

def print_footer(students)
  puts "Overall, we have #{students.count} great students.".center(30)
end

students = input_students
print_header
print(students)
print_footer(students)