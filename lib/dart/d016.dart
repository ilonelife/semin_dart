/*
당신은 기상청 데이터 분석가로써 태풍 상륙 간격에 대해 데이터를 만들어야 한다.
샘플로 5개의 태풍 상륙일 정보가 주어지면, 다음 태풍이 몇 일 간격으로 발생했는지 일수를
구하는 프로그램을 작성하시오.
 */

import 'dart:convert';
import 'dart:io';

void main() {
  List<int> inputs = [];

  Typhoon typhoon = Typhoon();

  for (int i = 0; i < 5; i++) {
    int date = int.parse(stdin.readLineSync(encoding: utf8));
    inputs.add(date);
  }

  for (int j = 0; j < 4; j++){
    print(typhoon.typhoonDate(inputs)[j]);
  }
}

class Typhoon {
  List<int> typhoonDate(List<int> inputs) {
    List<int> result = [];

    for (int i = 0; i < inputs.length-1; i++) {
     int k = inputs[i+1] - inputs[i];
     result.add(k);
    }
    return result;
  }
}