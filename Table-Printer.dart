import 'dart:io';

void main()
{

  stdout.write('Enter a Number to have its table :');
  double? n=double.parse(stdin.readLineSync()!);
  table(n);
}
void table(double num)
{
  for(int i=1;i<=10;i++)
    {
      print('$num * $i =${i*num}');
    }
}
