import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  print('점을 보세요');
  print('이름을 입력해 주세요');
  String? name = stdin.readLineSync(encoding: utf8);

  print('나이를 입력해 주세요');
  String? ageString = stdin.readLineSync(encoding: utf8);

  int age = int.parse(ageString!);

  var rng = Random();
  int fortune = rng.nextInt(4);  // 0 ~ 3
  // fortune = Random().nextInt(4);
  fortune++;                     // 1 ~ 4

  print('$name님 $age 살,  당산의 운세는...');

  switch (fortune) {
    case 1:
      print('대박');
      break;
    case 2:
      print('중박');
      break;
    case 3:
      print('보통');
      break;
    default:
      print('망');
      break;
  }
  // if (fortune == 1) {
  //   print('$fortune 대박');
  // } else if (fortune == 2) {
  //   print('$fortune 중박');
  // } else if (fortune == 3) {
  //   print('$fortune 보통');
  // } else {
  //   print('$fortune 망');
  // }
}
