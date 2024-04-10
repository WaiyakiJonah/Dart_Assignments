// Define a Student class
class Student {
  String name;
  int age;
  int Level;

  // Constructor
  Student(this.name, this.age, this.Level);

  // Method to print student's information
  void printInfo() {
    print('Student Name: $name');
    print('Age: $age');
    print('Level: $Level');
  }
}

// Define a Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  // Constructor
  Teacher(this.name, this.age, this.subject);

  // Method to print teacher's information
  void printInfo() {
    print('Teacher Name: $name');
    print('Age: $age');
    print('Subject: $subject');
  }
}

// Define a SchoolMember class
class SchoolMember {
  late Student student;
  late Teacher teacher;

  // Constructor
  SchoolMember() {
    student = Student('Jonathan Waiyaki', 15, 7);
    teacher = Teacher('Mr. Stanley Munga', 35, 'Dart');
  }

  // Method to print student and teacher information
  void printInfo() {
    print('Student Information:');
    student.printInfo();
    print('\nTeacher Information:');
    teacher.printInfo();
  }
}

void main() {
  // Create an instance of the SchoolMember class and print the information
  var schoolMember = SchoolMember();
  schoolMember.printInfo();
}
