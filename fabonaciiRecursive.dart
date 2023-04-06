import 'dart:io';

main()
{
  stdout.write('Which nth value do you want to print of Fibonacci +>');
  int? num=int.parse(stdin.readLineSync()!);
  fibpt(num);
}
void fibpt(int x)
{
  for(int i=1;i<=x;i++)
    stdout.write('${fib(i)} \t');
}
int fib(int n)
{
  if(n==1 || n==2)
    return n-1;

  return (fib(n-1)+fib(n-2));
}
