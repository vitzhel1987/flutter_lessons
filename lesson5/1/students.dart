//Создайте класс Student, который будет иметь поля для имени, возраста и среднего балла.
//Напишите функцию sortStudentsByGPA(List<Student> students), которая принимает
// список студентов и сортирует его по среднему баллу в порядке убывания.

class Student{
  String name;
  int age;
  double averageScore;

  Student(this.name, this.age, this.averageScore);

  @override
  String toString() {
    return "($name, $age, $averageScore)";
  }
}

void sortStudentsByGPA(List<Student> students){
  //students.sort((item1, item2) => item1.age - item2.age);
  students.sort((item1, item2) {
    if ((item1.averageScore - item2.averageScore) < 0)
      return 1;
    else
      if ((item1.averageScore - item2.averageScore) > 0)
        return -1;
      else
          return 0;
  });
}

void main() {
  final List<Student> students = [
    Student('Иванов', 21, 7.6),
    Student('Петров', 22, 8.2),
    Student('Сидоров', 20, 7.9)
  ];
  print('students=$students');
  sortStudentsByGPA(students);
  print('students=$students');
}

