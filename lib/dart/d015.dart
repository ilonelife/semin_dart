/*
오늘은 빼빼로 데이 파티를 하는 날입니다. 하지만 빼빼로가 11개 이상 있어야 파티를 열 수
있습니다.
빼빼로 1개는 "1"로 표시하며 1로 연속되는 문자열이 주어집니다.
파티를 열 수 있으면 "OK", 파티를 열 수 없다면 앞으로 최소한의 더 필요한 빼빼로의 수를
출력합니다.
 */

import 'dart:convert';
import 'dart:io';

void main() {

  String eleven = stdin.readLineSync(encoding: utf8);

  CheckNum checkNum = CheckNum();

  print(checkNum.countNum(eleven));

}

class CheckNum {
  String countNum(String num) {
    String result = 'OK';

    if (num.length >= 11) {
      result = 'OK';
    } else {
      int count = 11 - num.length;
      result = count.toString();
    }

    return result;

  }
}