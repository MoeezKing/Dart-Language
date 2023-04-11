import 'dart:io';
import 'dart:collection';

main()
{
  var l1=inputData();
  l1=sort(l1);
  print('The sorted order of your entered values is as following');
  for(int x in l1)
    {
      stdout.write('${x} -->');
    }
  stdout.write('\b\b\b');
}
List inputData()
{
  var mylist=<dynamic>[];
  stdout.write('Input the values up-to your choice and limit and amount \n And input a negative nu,ber to get the entered values in ascending order\n');
  while(true)
    {
      stdout.write('Enter the value :>>');
      var n=int.parse(stdin.readLineSync()!);
      if(n<0)
        break;
      else
        mylist.add(n);
    }
  return mylist;
}
List sort(List l)
{
  for(int j=0;j<l.length;j++) {
    for (int i = 1; i < l.length; i++) {
      if (l[i - 1] > l[i]) {
        int t = l[i];
        l[i] = l[i - 1];
        l[i - 1] = t;
      }
    }
  }
  return l;
}
