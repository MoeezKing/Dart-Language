import 'dart:io';

void main()
{
  stdout.write('Enter a number to know its factorial :-');
  int? n=int.parse(stdin.readLineSync()!);

  print('Factorial is ${factorial(n)}');
}
int factorial(int num)
{
  if(num==0)
    return 1;
  for(int i=num-1;i>0;i--)
    {
      num=i*num;
    }
  return num;
}
