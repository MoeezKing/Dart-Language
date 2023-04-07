import 'dart:io';

main()
{
  print('****************LCM Calculator*******************');
  stdout.write('Enter 1st number :-');
  int? n1=int.parse(stdin.readLineSync()!);
  stdout.write('Enter 2nd number :-');
  int? n2=int.parse(stdin.readLineSync()!);

  print('LCM of $n1 & $n2 is ${LCM(n1, n2)}');

}
int LCM(int a,int b)
{
  if(a==0 || b==0)
    return 0;
  int factor=2;
  int lcm=1;
  while(a!=1 || b!=1)
    {
      if(a%factor==0 || b%factor==0) {
        if (a % factor == 0 && b % factor == 0) {
          a = a ~/ factor;
          b = b ~/ factor;
          lcm = lcm * factor;
        }
        else if (a % factor == 0) {
          a = a ~/ factor;
          lcm = lcm * factor;
        } else if (b % factor == 0) {
          b = b ~/ factor;
          lcm = lcm * factor;
        }
      }else{
        factor++;
      }
    }
    return lcm;
}
