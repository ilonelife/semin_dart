/*
정수 m과 n이 주어졌을 때
m을 n으로 나눈 몫과 나머지를 출력하라
 */

import 'dart:convert';

import 'dart:io';

void main() {
  int m = 20;
  int n = 3;

  ShareRemainder shareRemainder = ShareRemainder();

  String input = stdin.readLineSync(encoding: utf8);

  List<String> inputs = input.split(' ');

  int k = int.parse(inputs[0]);
  int l = int.parse(inputs[1]);

  print('$m 나누기 $n 계산');
  print('몫    : ${shareRemainder.resultShare(m, n)}');
  print('나머지 : ${shareRemainder.resultReaminder(m, n)}');
}

class ShareRemainder {
  // 몫 구하기
  int resultShare(int m, int n) {
    return m ~/ n;
  }

  // 나머지 구하기
  int resultReaminder(int m, int n) {
    return m % n;
  }
}
