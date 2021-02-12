$school_name = 'PPSV' # Global Variable
NO_OF_SUBJECTS = 10 # Global Const Variable

class Student

  @@students = 0 # Class Variable
  STD = 7 # Local Const Variable
  NO_OF_SUBJECTS = 5 # Reinitializing the Global Const Only For Class

  def initialize(name, dob, addr)
    @@students += 1
    @roll_no = @@students
    @name = name # Class Instance Variable
    @dob = dob
    @addr = addr
  end

  # Instance Method
  def print_data
    puts "Student Id : - #{@roll_no}"
    puts "Student Name : - #{@name}"
    puts "Student Dob : - #{@dob}"
    puts "Student Address :- #{@addr}"
    puts "School Name :- #{$school_name}"
    puts "Student Standard :- #{STD}"
    puts "No. of Subjects (Local Const):- #{NO_OF_SUBJECTS}"
    puts "No. of Subjects (Global Const) :- #{::NO_OF_SUBJECTS}"
  end

  # Class Methods
  def self.no_of_students
    puts "\nTotal Students in Class is :- #{@@students}"
  end
end

student1 = Student.new('Akshay', '1/1/2000', 'Surat')
student1.print_data # Accessing The Instance Method
student2 = Student.new('Jaydip', '2/1/2000', 'Rajkot')

Student.no_of_students # Accessing The Class Method