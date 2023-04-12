import 'dart:io';

main()
{
  int? size=inputSize();
  var l=inputInteger(size);
  l=getSortedEvenNumbers(l);

  print(l);

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
List<int> inputInteger(int s)
{
  print('Enter value that can be integer  :-');
  var l=<int>[];
  for(int i=0;i<s;i++)
  {
    stdout.write('Enter the value ->>');
    int? inp=int.parse(stdin.readLineSync()!);
    l.add(inp);
  }
  return l;
}
List<int> getSortedEvenNumbers(List<int> numbers) {
  // even check and modification
  var l=<int>[];
  for(int i in numbers)
    {
      if(i%2==0)
        l.add(i);
    }

  numbers=l;

  // sort
  for(int j=0;j<numbers.length;j++) {
    for (int i = 1; i < numbers.length; i++) {
      if (numbers[i - 1] > numbers[i]) {
        int t = numbers[i];
        numbers[i] = numbers[i - 1];
        numbers[i - 1] = t;
      }
    }
  }
  return numbers;
}
