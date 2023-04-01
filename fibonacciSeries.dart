import 'dart:io';

void main() {
  
 stdout.write('How many Fibonacci number do you want to print on screen :-');
 int? n=int.parse(stdin.readLineSync()!);

 int f1=0,f2=1;

 if(n==0)
  return;

 if(n==1) {
  print('$f1');
  return;
  }
  stdout.write('$f1\t$f2');
  for(int i=1;i<=n-2;i++)
  {
   int nf=f1+f2;
   stdout.write('\t$nf');
   f1=f2;
   f2=nf;
  }
 }

