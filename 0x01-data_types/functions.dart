int addTwo(int num1, int num2)
{
  return (num1 + num2);
}
int subtractTwo(int num1, int num2)
{
  return (num1 - num2);
}
int multiplyTwo(int num1, int num2)
{
  return (num1*num2);
}
double divideTwo(int num1,int num2)
{
  return (num1/num2);
}
int stringLength(String name)
{
  return (name.length);
}
int getFirstElement(List numbers)
{
  return (numbers[0]);
}
void main()
{
  int sum = addTwo(23, 34);
  print(sum);
  int difference = subtractTwo(33, 20);
  print(difference);
  int product = multiplyTwo(3, 56);
  print(product);
  double division = divideTwo(34, 4);
  print(division);
  int length = stringLength('Conspicous');
  print(length);
  int first = getFirstElement([27,45,667,453,242]);
  print(first);
}