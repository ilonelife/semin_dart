import 'dart:math';

void main() {
  int min = -10;
  int max = 10;
  Random rnd = Random();

  int abs = min + rnd.nextInt(max - min);

  AbsNum absNum = AbsNum();

  print (abs);
  print(absNum.findAbs(abs));
}

class AbsNum {
  int findAbs(int num) {

    if (num < 0) {
      num = num * -1;
    }
    return num;
  }
}
