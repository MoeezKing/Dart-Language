import 'dart:io';

void main()
{
  int n=65;
  for(int i=5;i>=1;i--)
    {
      for(int j=1;j<=i;j++)
        {
          stdout.write('${String.fromCharCode(n)}');
          n++;
        }
      print('');
    }
}
