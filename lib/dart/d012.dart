import 'dart:math';

/*
-100 부터 100까지 중 정수 n이 주어졌을 때 절대값을 구하시오
*/

void main() {
  int min = -100;
  int max = 100;
  Random rnd = Random();

  int abs = min + rnd.nextInt(max - min);

  AbsNum absNum = AbsNum();

  print ('100 ~ -100 랜덤수 : $abs');
  print('절대값 결과 : ${absNum.findAbs(abs)}');
}

class AbsNum {
  int findAbs(int num) {

    if (num < 0) {
      num = num * -1;
    }
    return num;

    // return num < 0 ? -num : num;
  }
}
