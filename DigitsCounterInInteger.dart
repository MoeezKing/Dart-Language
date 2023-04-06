import 'dart:io';

main()
{
  stdout.write('Enter a integer value to know it number of digits :- ');
  int? num=int.parse(stdin.readLineSync()!);
  print('Total number of digits in the number $num is ${noDigits(num)}');
}
int noDigits(int x)
{
  int d=0;
  if(x==0)
    return 1;
  while(x!=0)
    {
      x=x~/10;
      d++;
    }
    return d;
}
