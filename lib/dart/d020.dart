/*
당신은 수식의 표기법 해독을 시도했는데, 다음의 규칙을 찾아 냈습니다.
수식은 모두 2 개 이상의 정수의 덧셈이다
사용하는 정수는 1에서 99까지 10 진법을 사용
연속하는 "<" 의 수가 10의 자리의 수를 나타내며, 연속하는 "/"(슬래시)의 수가 1의 자리의 수를 나타낸다
"+"가 덧셈 기호를 나타낸다
이 규칙을 바탕으로 작성된 수식을 해석하고, 그 결과를 돌려주는 프로그램을 작성하십시오.
 */

import 'dart:convert';
import 'dart:io';

void main() {
  String input = '';
  input = stdin.readLineSync(encoding: utf8);

  Decoding decoding = Decoding();

  print(decoding.decodingResult(input));
}

class Decoding {
  int decodingResult(String input) {
    int num = 0;
    int result = 0;
    List<int> decoder = [];

    for (int i = 0; i < input.length; i++) {
      if (input[i] == '<') {
        num = 10;
      } else if (input[i] == '/') {
        num = 1;
      } else {
        num = 0;
      }
      decoder.add(num);
    }

    for (int i = 0; i < decoder.length; i++) {
      result += decoder[i];
    }
    return result;
  }
}
