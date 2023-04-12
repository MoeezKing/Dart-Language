import 'dart:io';

main()
{
  int? size1=inputSize();
  var l1=inputInteger(size1);
  print('List->> $l1');
  l1=findTwoSum(l1, 10);
  print('target->> 10');
  
  print(l1);

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
List<int> findTwoSum(List<int> numbers, int target) {
  var tl=<int>[];
  for(int j=0;j<numbers.length;j++)
    {
      for(int i=j+1;i<numbers.length;i++)
        {
          if((numbers[j]+numbers[i])==target)
            {
              tl.add(numbers[i]);
              tl.add(numbers[j]);
              return tl;
            }
        }
    }
  return tl;
}
