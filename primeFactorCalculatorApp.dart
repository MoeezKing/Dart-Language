import 'dart:io';

main()
{
  stdout.write('Enter a number to know its prime factors :=>');
  int? num=int.parse(stdin.readLineSync()!);
  print('Prime factor of $num are as follow ');
  primeFactor(num);
}
void primeFactor(int x)
{
  if(x==1 || x==0)
    {
      stdout.write('$x \t');
      return;
    }
  int factor=2;
  int n=x;
  while(n!=1)
    {
      if(n%factor==0)
        {
          n=n~/factor;
          stdout.write('$factor \t');
        }else
        {
          if(x~/2==factor)
            factor=x;
          else
            factor++;
        }
    }
}
