import 'dart:io';

void main()
{
  print('Enter 1st number =');
  double? a=double.parse(stdin.readLineSync()!);
  print('Enter 2nd number = ');
  double? b=double.parse(stdin.readLineSync()!);

  print('Addition is ${a+b}');
  print('Subtraction is ${a-b}');
  print('Multiplication is ${a*b}');
  print('Division is ${a/b}');
  print('Modulus is ${a%b}');
  print('Division without decimal is ${a~/b}');

}
