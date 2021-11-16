/*
당신은 1, 2, 3, 4, 5의 숫자가 적힌 5 종류의 카드를 모으고 있습니다.
4번째까지 모여서 1장만 더 모으면 되는 상황에 카드가 섞여 버렸습니다.
4장의 카드 정보는 줄 바꿈으로 구분하여 입력되므로 1~5의 카드 중 부족한 카드의 숫자를
출력합니다.
 */

import 'dart:convert';

import 'dart:io';

void main() {
  List<int> inputNum = [];

  MissingNum missingNum = MissingNum();

  for (int i = 0; i < 4; i++) {
    int num = int.parse(stdin.readLineSync(encoding: utf8));
    inputNum.add(num);
  }

  print(missingNum.findNumber(inputNum));
}

class MissingNum {
  int findNumber(List<int> inputNum) {
    inputNum.sort();

    if (inputNum[0] != 1) {
      return 1;
    }

    for (int i = 0; i < 3; i++) {
      int l = inputNum[i + 1] - inputNum[i];

      if (l != 1) {
        return inputNum[i] + 1;
      }
    }
    return 5;
  }
}
