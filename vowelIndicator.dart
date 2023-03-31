import 'dart:io';

void main()
{
  String chr=inputChr();
  if(isVowel(chr))
    {
      print('The entered character is vowel.');
    }
  else
    {
      print('The entered character is not vowel.');
    }
  
}
String inputChr()
{
  stdout.write('Enter a character to know whether it is Vowel or not =->');
  String? str=stdin.readLineSync();

  if (str==null?true:str.length != 1) {
    print('Invalid input . You have to Enter a single Character');
    str = inputChr();
  }

  return str;
}
bool isVowel(String c)
{
  if(c=='A'||c=='a')
    {
      return true;
    }else if(c=='E'||c=='e')
    {
      return true;
    }else if(c=='I'||c=='i')
  {
    return true;
  }else if(c=='O'||c=='u')
  {
    return true;
  }else if(c=='U'||c=='u')
  {
    return true;
  }else{
    return false;
  }

}
