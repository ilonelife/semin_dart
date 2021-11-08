/*
5개의 수를 입력받아 최대값, 최소값 출력하기
*/
import 'dart:io';
import 'dart:math';

void main() {
  int count = 5;
  final list = <int>[];

  MinMax minmax = MinMax();

  print('''
  큰수 작은수 구하기
  숫자 5개를 입력하세요
  ''');

  for (int i = 0; i < count; i++) {
    list.add(int.parse(stdin.readLineSync()));
  }

  print(list);

  print('가장 작은 숫자는 ${minmax.findMin(count, list)}');
  print('가장 큰 숫자는 ${minmax.findMax(count, list)}');
}

class MinMax {
  int temp;
  int minNum = 100;
  int maxNum = 0;

  MinMax();

  int findMin(int count, List<int> list) {
    for (int i = 0; i < count; i++) {
      minNum = min(minNum, list[i]);
    }
    return minNum;
  }

  int findMax(int count, List<int> list) {
    for (int i = 0; i < count; i++) {
      maxNum = max(maxNum, list[i]);
    }
    return maxNum;
  }
}
