import 'dart:io';

void main()
{
  stdout.write('Enter a number to know its whether it is prime or not :-');
  int? n=int.parse(stdin.readLineSync()!);

  if(primeCheck(n))
    print('$n is Prime number .');
  else
    print('$n is not Prime number .');
}
bool primeCheck(int num)
{
  int p=0;
  for(int i=1;i<=num/2;i++)
    {
      if(num%i==0)
        p++;
    }
  if(p==1)
    return true;
  else
    return false;
}
