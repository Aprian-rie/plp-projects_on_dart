class original_class
{
  void print_message()
  {
    print("This is the original message");
  }
}
class overriding_method_class extends original_class
{
  void print_message()
  {
    print("the overridden message is this");
  }
}
void main()
{
  var class1 = original_class();
  var class2 = overriding_method_class();
  class1.print_message();
  class2.print_message();
}