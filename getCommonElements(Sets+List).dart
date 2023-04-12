import 'dart:io';

main()
{
  List<Set<int>> sl=[{1,2,3},{2,4,5},{6,7,2},{2,99,88}];
  var s=getCommonElements(sl);
  print(s);
}
Set<int> getCommonElements(List<Set<int>> sets) {

  if(sets.isEmpty)
      return <int>{};
  else if(sets.length==1)
      return sets[0];
  else if(sets.length==2)
    return sets[0].intersection(sets[1]);
  else
    {
      Set<int> s=(sets[0].intersection(sets[1]));
      for(int i=2;i<sets.length;i++)
        {
          s=s.intersection(sets[i]);
        }
      return s;
    }
}
