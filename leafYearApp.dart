import 'dart:io';

void main()
{
  stdout.write('Enter the year to know whether it is leaf year or not :-');
  int? y=int.parse(stdin.readLineSync()!);

  if((y%4==0)&&((y%400==0)||(y%100!=0)))
    print('The entered year is leaf year.');
  else
    print('The entered year is not leaf year .');
}
