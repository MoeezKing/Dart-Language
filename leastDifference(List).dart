main()
{
  var lt=<double>[9,1,5,7,10];
  leastDifference(lt);
}
double absoluteDifference(double n1,double n2)
{
  double diff=n1-n2;
  if(diff<0)
    return -1*diff;
  else
    return diff;
}
void leastDifference(List<double> l)
{
  if(l.isEmpty || l.length==1)
    {
      print('There muust be one pair(2) elements in list to calculate least difference');
      return;
    }
  List<double> ld=[l[0],l[1]];
  double df=absoluteDifference(l[0], l[1]);

  for(int i=0;i<l.length;i++)
    {
      for(int j=0;j<l.length;j++)
        {
          if(j==i)
            continue;
          if(absoluteDifference(l[i], l[j])<df)
            {
              df=absoluteDifference(l[i], l[j]);
              ld.clear();
              ld.addAll([l[i],l[j]]);
            }
        }
    }
  print('The least difference about two numbers in list:$l is $df between $ld at indexes ${l.indexOf(ld[0])} & ${l.indexOf(ld[1])} respectively');
}
