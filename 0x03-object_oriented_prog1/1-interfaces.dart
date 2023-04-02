class cars
{
  String? car_name;
  int? year_founded;

  cars(String car_name, int year_founded)
  {
    this.car_name = car_name;
    this.year_founded = year_founded;
  }

  void display_car_details()
  {
    print("$car_name was founded in $year_founded");
  }
}
class BMW implements cars
{
  String? car_name;
  int? year_founded;

  BMW(String car_name, int year_founded)
  {
    this.car_name = car_name;
    this.year_founded = year_founded;
  }

  void display_car_details()
  {
    print("$car_name was released in $year_founded");
  }
}
class MAZDA implements cars
{
  String? car_name;
  int? year_founded;

  MAZDA(String car_name, int year_founded)
  {
    this.car_name = car_name;
    this.year_founded = year_founded;
  }

  void display_car_details()
  {
    print("$car_name was released in $year_founded");
  }
}
void main()
{
  var BMW_Sedan = BMW('BMW 3 Series Sedan', 2013);
  var MAZDA_Cx5 = MAZDA('MAZDA-CX5', 2017);
  BMW_Sedan.display_car_details();
  MAZDA_Cx5.display_car_details();
}