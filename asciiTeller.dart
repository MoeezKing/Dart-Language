import 'dart:io';

void main()
{
  String str=inputStr();
  asciiTranslator(str);
}
String inputStr()
{
  stdout.write('Enter a string to know about its character ASCII code -->>');
  String? s=stdin.readLineSync();
  if(s==null?true:s.length==0)
    {
      print('>>->>Enter a string of at-least length one');
      s=inputStr();
    }
  return s;
}
void asciiTranslator(String st)
{
  for(int i=0;i<st.length;i++)
    {
      if(st[i]==' ')
        continue;
      print('ASCII of ${st[i]} is ${st.codeUnitAt(i)}');
    }
}
