class teacher
{
  String? name;
  int? age;
  String? subject;

  teacher(String name, int age, String subject)
  {
    this.name = name;
    this.age = age;
    this.subject = subject;
  }

  void print_tr_info()
  {
    print("Name: $name\nAge: $age\nSubject: $subject");

  }
}
class student
{
  String? name;
  int? age;
  int? gradelevel;

  student(String name, int age, int gradelevel)
  {
    this.name = name;
    this.age = age;
    this.gradelevel = gradelevel;
  }
  void print_student_info()
  {
    print("Name: $name\nAge: $age\nGrade-level: $gradelevel");
  }
}

void main()
{
  var tr_me = teacher('Rie', 29, 'Life-Skills');
  var student_me = student('Ac rie', 4, 7);
  tr_me.print_tr_info();
  student_me.print_student_info();
}