import 'dart:io';

main()
{
  Set<String> s={'Apple','Mango','Banana','Peach','Ice-cream','Owl'};
  s=getVowelStrings(s);
  print(s);
}
Set<String> getVowelStrings(Set<String> inputSet) {

  Set<String> v={};
  inputSet.forEach((element) {
    if(element.length>=5)
      {
        if(element[0]=='a' || element[0]=='A' ||element[0]=='e' || element[0]=='E' ||element[0]=='o' || element[0]=='O' ||element[0]=='I' || element[0]=='i' ||element[0]=='u' || element[0]=='U'  )
        v.add(element);
      }
  });
  return v;
}
