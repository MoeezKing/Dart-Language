import 'dart:io';

void main()
{
  print('Enter the radius of circle :');
  double? r=double.parse(stdin.readLineSync()!);
  double pi=3.142;
  double area=pi*r*r;
  double circum=2*pi*r;
  print('Area of this circle is $area \nCircumference of this circle is $circum ');
}
