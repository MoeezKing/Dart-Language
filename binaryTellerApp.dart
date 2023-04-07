import 'dart:io';

main()
{
  stdout.write('Enter an integer number to know its binary :-');
  int n=input();
  binaryCode(n);
}
int input()
{
  int? num=int.parse(stdin.readLineSync()!);
  if(num>=0)
    return num;
  else
    {
      stdout.write('WRONG input ! Enter an integer number to know its binary :-');
       num=input();
    }
  return num;
}
void binaryCode(int x)
{
  stdout.write('Binary of $x is ');
  if(x==0)
    stdout.write(0);
  while(x!=0)
    {
      int b=x%2;
      stdout.write(b);
      x=x~/2;
    }
}
