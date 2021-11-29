/*
이 놀이는 1에서 9까지의 숫자 카드만 4 장 사용합니다. 그러나 이 4 장에서 같은 숫자의 카
드가 중복될 수 있습니다. 규칙은 다음과 같습니다.
4 장의 카드를 나란히 합니다. 왼쪽 두 장, 오른쪽 두 장의 카드를 각각 2 자리의 정수로 보
고 합을 계산합니다. 모든 조합을 시도하고 합의 최대 값을 구합니다.
카드 4 장에 적힌 숫자가 주어지면 최대 점수를 출력합니다.
입력 예1의 2, 9, 3, 8의 4 장을 사용하는 경우 다음의 12 가지 결과가 나오게 되고 최대 값
은 175입니다.
이 카드 4 장의 나열방법을 계산해 보면 4! = 24 가지 존재하지만, 덧셈은 순서에 의존하지
않기 때문에 12 가지만을 고려하면 됨에 유의하십시오.
 */

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> inputs = stdin.readLineSync(encoding: utf8).split(' ');

  CardSort cardSort = CardSort();

  print(cardSort.findMax(inputs));

}

class CardSort {
  int findMax (List<String> inputs) {
    List<int> cards = [];
    int sum = 0;

    for( int i = 0; i < 4; i++) {
      int temp = int.parse(inputs[i]);
      cards.add(temp);
    }

    cards.sort();

    String num1 = cards[3].toString() + cards[1].toString();
    String num2 = cards[2].toString() + cards[0].toString();
    sum = int.parse(num1) + int.parse(num2);

    return sum;
  }
}