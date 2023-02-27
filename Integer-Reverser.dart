import 'dart:io';

main()
{
  stdout.write('Enter a integer to have its reverse :');
  int? n=int.parse(stdin.readLineSync()!);

  print('The reverse of $n is ${reverse(n)}');
}
reverse(int num)
{
  int mod,res;
  res=num%10;
  num=num~/10;
  while(num!=0)
    {
      mod=num%10;
      res=res*10+mod;
      num=num~/10;
    }
    return res;
}
