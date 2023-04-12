import 'dart:io';

main()
{
  int? size1=inputSize();
  var l1=inputInteger(size1);
  int? size2=inputSize();
  var l2=inputInteger(size2);
  var cl=getCommonElements(l1, l2);
  print(cl);

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
List<int> getCommonElements(List<int> list1, List<int> list2) {
  var l=<int>[];
  for(int j=0;j<list1.length;j++)
    {
      for(int i=0;i<list2.length;i++)
        {
          if(list1[j]==list2[i])
            l.add(list1[j]);
        }
    }
  l.sort();
  return l;
}
/*
Optimal solution by chatgpt
List<int> getCommonElements(List<int> list1, List<int> list2) {
  var set = Set<int>.from(list1);
  var commonElements = <int>[];
  for (int i in list2) {
    if (set.contains(i)) {
      commonElements.add(i);
    }
  }
  commonElements.sort();
  return commonElements;
  }
  */



