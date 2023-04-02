class school
{
  String? sc_name;
  int? sc_reg_number;

  school(String sc_name, int sc_reg_number)
  {
    this.sc_name = sc_name;
    this.sc_reg_number = sc_reg_number;
  }
  int show_sc_info()
  {
    print("School name: $sc_name\nRegistration Number: $sc_reg_number");
    return (0);
  }
}
class teacher extends school
{
  String? tr_name;
  int? tr_age;
  String? tr_subject;

teacher(String sc_name, int sc_reg_number,String tr_name, int tr_age, String tr_subject) 
: super(sc_name, sc_reg_number)
{
  this.tr_name = tr_name;
  this.tr_age = tr_age;
  this.tr_subject = tr_subject;
}
  int show_tr_info()
  {
    show_sc_info();
    print("Teacher's name: $tr_name\nSubject: $tr_subject");
    return (0);
  }
}
class student extends school
{
  String? st_name;
  int? st_age;

  student(String sc_name, int sc_reg_number, String st_name, int st_age)
  :super(sc_name,sc_reg_number)
  {
    this.st_name = st_name;
    this.st_age = st_age;
  }

  int show_st_info()
  {
    show_sc_info();
    print("Student's name: $st_name\nAge: $st_age");
    return (0);
  }
}

void main()
{
  var Toby = teacher('Thomas More High School', 1440, 'Thobias Augustine', 35, 'English');
  var Karimuribo = student('Thomas More High School', 1440, 'Daniel Karimurubo', 15);
  print(Toby.show_tr_info());
  print(Karimuribo.show_st_info());
}