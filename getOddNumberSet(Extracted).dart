main()
{
  var s=<int>{1,2,3,4,5,6,7,8,9};
  s=getOddNumbers(s);
  print(s);
}
Set<int> getOddNumbers(Set<int> inputSet) {
  Set<int> s={};
  inputSet.forEach((element) {
    if(element%2!=0)
      s.add(element);
  });
  return s;
}
