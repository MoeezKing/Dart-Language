import 'dart:io';

void main()
{
  stdout.write('Enter x-axis part of the point P -->P(x,y) : ');
  double? x =double.parse(stdin.readLineSync()!);

  stdout.write('Enter y-axis part of the point P -->P(x,y) : ');
  double? y =double.parse(stdin.readLineSync()!);

  ordinate(x, y);
}

void ordinate(double x,double y) {
  if (x == 0 && y == 0) {
    print('The pont is on origin');
  }
  else if (x == 0) {
    print('The point is on y-axis line');
  }
  else if (y == 0) {
    print('The point is on x-axis line ');
  }
  else if (x > 0 && y > 0) {
    print('The point is on 1st Quadant');
  }
  else if (x > 0 && y < 0) {
    print('The point is on 4th Quadant');
  }
  else if (x < 0 && y > 0) {
    print('The point is on 2nd Quadant');
  }
  else {
    print('The point is on  3rd Quadant');
  }
}
