import 'dart:io';

void main()
{
  stdout.write('Enter a range (number up to which) prime number is to required to print :-');
  int? n=int.parse(stdin.readLineSync()!);

  for(int i=1;i<=n;i++) {
    if (primeCheck(i))
      stdout.write('$i \t');
  }
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
