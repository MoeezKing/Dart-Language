import 'dart:io';

main()
{
  int? size=inputSize();
  var l=dataInput(size);

  double avg=0;
  for(var i in l)
      avg=avg+i;
  avg=avg/l.length;

  print('Average of entered data is $avg & the values greater than average are as follow');
  for(var i in l)
    {
      if(i>avg)
        stdout.write('$i ');
    }

}
int inputSize()
{
  stdout.write('How many numbers you want to enter in the system :-');
  int? num=int.parse(stdin.readLineSync()!);
  if(!(num>0))
    {
      print('WRONG INPUT size can\'t be negative or zero');
      num=inputSize();
    }
  return num;
}
List dataInput(int s)
{
  print('Enter value that can be integer as well as floating point :-');
  var l=[];
  for(int i=0;i<s;i++)
    {
      stdout.write('Enter the value ->>');
      double? inp=double.parse(stdin.readLineSync()!);
      l.add(inp);
    }
  return l;
}
