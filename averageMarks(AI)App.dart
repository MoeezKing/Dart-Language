import 'dart:io';

void main() {
  stdout.write('Enter the marks of students and to terminate enter any negitive number :-');
  double? n=double.parse(stdin.readLineSync()!);
  double i=0,sum=0;
  do{
    if(n==null?true:n<0)
      break;
    sum=sum+n;
    i++;
    stdout.write('Enter the marks of students and to terminate enter any negitive number :-');
    n=double.parse(stdin.readLineSync()!);
  }while(n>=0);

  if(i!=0)
  print('Total students are $i\nTotal numbers of all students are $sum\nAverage of these student is ${sum/i}');
  else
    print('No student in record .');
}
