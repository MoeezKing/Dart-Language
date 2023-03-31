import 'dart:io';

void main()
{
  stdout.write('Enter 1st number :-');
  double? n1=double.parse(stdin.readLineSync()!);
  stdout.write('Enter 2nd number :-');
  double? n2=double.parse(stdin.readLineSync()!);
  stdout.write('Enter 3rd number :-');
  double? n3=double.parse(stdin.readLineSync()!);
  print('Largest number among then is ${largestNum(n1, n2, n3)}');
}
double largestNum(double a,double b,double c)
{
  if(a>b)
    {
      if(a>c)
        return a;
      else
        return c;
    }else
      {
        if(b>c)
          return b;
        else
          return c;
      }
}
