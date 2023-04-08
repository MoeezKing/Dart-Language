import 'dart:io';

main()
{
 print('***************** < Binary to Decimal convertor > ******************');
 int bn=inputBinary();
  print('Decimal value of ($bn) is ${binaryToDecimal(bn)}');
}
int inputBinary()
{
  stdout.write('Enter a binary number :-');
  int? bn=int.parse(stdin.readLineSync()!);
  int sp=bn;
  bool binary=true;
  while(sp!=0)
  {
    int dgt=sp%10;
    if(dgt!=0 && dgt!=1) {
      binary = false;
      break;
    }
    sp=sp~/10;
  }
  if(!binary)
      {
        print('WRONG input ! Binary number only consist of 0\'s or 1\'s ');
        bn=inputBinary();
      }
  return bn;
}
int binaryToDecimal(int bn)
{
  int decimal=0;
  int p=0;  //power varible
  while(bn!=0)
    {
      int d=bn%10;
      decimal=decimal+d*pow(2,p);
      p++;
      bn=bn~/10;
    }
  return decimal;
}
int pow(int num, int p)
{
  int pow=1;
  for(int i=1;i<=p;i++)
    {
      pow=pow*num;
    }
  return pow;
}
