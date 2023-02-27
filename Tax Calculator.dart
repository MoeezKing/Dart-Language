import 'dart:io';

void taxCalculator(double salary,int age)
{
  if(salary>=35000)
  {
    if(age<50)
    {
      print('Your tax is ${(salary*10)/100}');
    }
    else{
      print('NO Tax as you are senior citizen .');
    }
  }else{
    print('No tax on your salary because your salary is less then tax applicable index. ');
  }
}
void main(){

  stdout.write('Enter your Salary :');
  double? salary=double.parse(stdin.readLineSync()!);

  stdout.write('Enter your Age:');
  int? age=int.parse(stdin.readLineSync()!);

  taxCalculator(salary, age);

}
