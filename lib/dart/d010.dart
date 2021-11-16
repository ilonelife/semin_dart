/*
당신은 회사를 대표하여 2개의 숫자를 골라야 합니다. 두 수가 모두 짝수이면 홀수파(홀수를
좋아하는 사람들의 모임)가 싫어합니다. 두 수가 모두 홀수이면 짝수파가 싫어합니다. 당신
은 짝수 하나 홀수 하나를 골라서 모두를 만족시켜야 합니다.
 */

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> inputs = stdin.readLineSync(encoding: utf8).split(' ');
  int m = int.parse(inputs[0]);
  int n = int.parse(inputs[1]);

  OddEven oddEven = OddEven();

  print(oddEven.checkOddEven(n, m));
}

class OddEven {
  String checkOddEven(int n, int m) {
    int nNum = n % 2;
    int mNum = m % 2;

    if ((nNum == 0 && mNum == 0) || (nNum == 1 && mNum == 1)) {
      return 'NO';
    }
    return 'YES';
  }
}
