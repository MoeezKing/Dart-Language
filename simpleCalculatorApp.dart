import 'dart:io';

void main()
{
  stdout.write('Enter !st number :-');
  double? n1=double.parse(stdin.readLineSync()!);
  stdout.write('Enter 2nd number :-');
  double? n2= double.parse(stdin.readLineSync()!);

  int op=operatorInput();
  calculate(n1,n2,op);

}
int operatorInput()
{
  stdout.write('Which Operation do you want to perform on your inputs \nEnter the corresponding value as mention below'
      '\n1.Addition(+)\n2.Subtraction(-)\n3.Multiplication(x)\n4.Division(÷)\n -->>');
  int? op=int.parse(stdin.readLineSync()!);
  if(!(op>=1 && op<=4))
    {
      print('\t<*>Invalid input of value . Enter one number between 1-4 as follow ');
      op=operatorInput();
    }
  return op;
}
void calculate(double a,double b,int o) {
  switch (o) {
    case 1:
      print('$a + $b = ${a + b}');
      break;
    case 2:
      print('$a - $b = ${a - b}');
      break;
    case 3:
      print('$a x $b = ${a * b}');
      break;
    case 4:
      print('$a ÷ $b = ${a / b}');
      break;
  }
}

