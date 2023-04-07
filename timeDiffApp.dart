import 'dart:io';

main()
{
  stdout.write('Enter 1st time hours(h):');
  int? th1=inputHour();
  stdout.write('Enter 1st time minutes(m):');
  int? tm1=inputMinutes();
  stdout.write('Enter 2nd time hours(h):');
  int? th2=inputHour();
  stdout.write('Enter 2n time minutes(m):');
  int? tm2=inputMinutes();

  timeDiff(th1, tm1, th2, tm2);
}
int inputHour()
{
  int? x =int.parse(stdin.readLineSync()!);
  if(x<=23 && x>=0)
    return x;
  else
    {
      stdout.write('Wrong input ! Enter time hours(h) ( 0-23 ) :');
      x=inputHour();
    }
  return x;
}
int inputMinutes()
{
  int? x =int.parse(stdin.readLineSync()!);
  if(x<=59 && x>=0)
    return x;
  else
  {
    stdout.write('Wrong input ! Enter time minutes(m) ( 0-59 ) :');
    x=inputMinutes();
  }
  return x;
}
void timeDiff(int h1,int m1,int h2, int m2)
{
  int hd=absoluteSub(h1, h2);
  int md=absoluteSub(m1, m2);
  print('Time difference between $h1:$m1 and $h2:$m2 is $hd:$md --> $hd(hours) and $md(minutes) OR ${60*hd+md} Minutes');
}
int absoluteSub(int n,int m)
{
  int x=m-n;
  if(x>=0)
    return x;
  else
    return -1*x;
}
