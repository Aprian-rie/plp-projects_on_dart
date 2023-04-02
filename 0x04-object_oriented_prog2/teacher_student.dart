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
    print("Name: $name\nage: $age\nSubject: $subject");

  }
}
class student
{
  String? name;
  int? age;
  int? gradelevel;
}