/*
아래와 같이 수열을 출력하는 프로그램을 짜시오
5 8 11 14 17 20 23 26 29 32

첫 숫자가 5이고 3씩 증가하는 것을 알 수 있다.
이것을 일반적으로 첫번째 숫자가 5이고 공차가 3인 등차수열이라고 부른다.

첫번째 숫자 m, 공차 n 이 주어졌을 때 10번째 숫자까지를 공백을 구분자로 출력하시오
 */

import 'dart:convert';

import 'dart:io';

void main() {
  int resultNum = 5;
  int tolerance = 3;

  // List<String> inputs = stdin.readLineSync(encoding: utf8).split(' ');
  // int m = int.parse(inputs[0]);
  // int n = int.parse(inputs[1]);

  ExerciseSeq exerciseSeq = ExerciseSeq();

  print(exerciseSeq.SequenceNum(resultNum, tolerance));   // stdout.write();  리턴 없이 화면에 출력.
}

class ExerciseSeq {
  String result = '';
  List<int> sequence = [];

  // List<int> sequence = [1,2,3,4,5];
  // List<int> sequence = List.generate(5, (index) => index + 1);

  String SequenceNum(int resultNum, int tolerance) {
    for (int i = 0; i < 10; i++) {
      if (i == 0) {
        resultNum = resultNum;
        sequence.add(resultNum);
      } else {
        resultNum = resultNum + tolerance;
        sequence.add(resultNum);
      }
      result = result + sequence[i].toString() + ' ';  // sequence.join(' ');
    }
    return result.trim();  // result.trim();  앞뒤 공백 제거,
                    // result.substring(1, result.length)
  }
}
/*  강의
void main() {
  List<String> inputs = stdin.readLineSync(encoding: utf8).split(' ');
  int m = int.parse(inputs[0]);
  int n = int.parse(inputs[1]);

  Calculator calculator = Calculator();
  print(calculator.getResult(m, n));
}
*/
/*
class Calculator {
  String getResult(int m, int n) { // 5, 10
    String result = '';

    for (int i = 0; i < 10; i++) {
      int num = m + (n * i);
      result = '$result $num';
    }

    // num = m + (n * i), i : 0 ~ 9
    // 5 = 5 + (10 * 0)
    // 15 = 5 + (10 * 1)
    // 25 = 5 + (10 * 2)
    // ...
    // 95 = 5 + (10 * 9)

    // return result.substring(1);   // 앞뒤 공백을 제거
    // return result.substring(1, result.length);   // 앞뒤 공백을 제거
    return result.trim();   // 앞뒤 공백을 제거
  }
}

*/


// List<int> nums = []
// for {
// int input1 = int.parse(stdin.readLineSync());
// nums = nums.add(input)
// }
