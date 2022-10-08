import 'dart:math';

int NotePicker(){
  var list = [0,1,2,3,4,5,6,7];
  final _random = Random();
  return list[_random.nextInt(list.length)];
}



