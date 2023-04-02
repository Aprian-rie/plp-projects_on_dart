class printer
{
  int i = 1;

  void print_5_numbers()
  {
    for(i = 1; i < 6; i++)
    {
      print(i);
    }
  }
}
void main()
{
  printer print5 = printer();
  print5.print_5_numbers();
}