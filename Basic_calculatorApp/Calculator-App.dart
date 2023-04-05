import 'dart:io';

double numInput()
{
  print("Enter the number for operation:");
  double num = double.parse(stdin.readLineSync()!);
  return (num);
}
String operandChoice()
{
  print("Enter the operation, strictly addition, subtraction, multiplication or division");
  String operand = stdin.readLineSync()!;
  return (operand);
}
void main()
{
  double num1, num2;
  double result = 0.0;
  String operand;

  num1 = numInput();
  operand = operandChoice();
  num2 = numInput();
  if (operand == '+')
  {
    result = num1 + num2;
  }
  else if (operand == '-')
  {
    result = num1 - num2;
  }
  else if (operand == '*')
  {
    result = num1 * num2;
  }
  else if (operand == '/')
  {
    result = num1 / num2;
  }
  print("The result of $num1 $operand $num2 = $result");
}