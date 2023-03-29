import 'dart:io';

void main()
{
  stdout.write('Enter the value :');
  int? n=int.parse(stdin.readLineSync()!);

  print('Pre increment in your value will result ${++n}');
  --n;
  print('Post increment in your value will result ${n++}');
  --n;
  print('Pre decrement in your value will result ${--n}');
  n++;
  print('Post decrement in your value will result ${n--}');
}
