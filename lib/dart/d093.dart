import 'dart:io';

/*
당신은 수를 열거하는 프로그램을 만들려고 한다. 그러려면 '자르기 좋은 숫자'를 발견해야 한다.
'자르기 좋은 숫자'란 다음 규칙을 따른다.

- 모든 숫자가 같아야 함

판별한 숫자 n 을 입력받아 조건에 맞으면 그 수를 그대로 출력하고
조건에 맞지 않으면 No를 출력하시오
 */

// 내 코드
void main() {
  bool result;

  SliceNum sliceNum = SliceNum();

  print('자르기 좋은 숫자를 입력하세요~');
  String yourNum = stdin.readLineSync();

  result = sliceNum.isSameNum(yourNum);

  if(result) {
    print(yourNum);
  } else {
    print('No');
  }

}

class SliceNum {
  String digit;

  bool isSameNum(String num) {
    digit = num[0];
    for (int i = 0; i < num.length; i++) {
      if (digit != num.substring(i, i + 1)) {
        return false;
      }
    }
    return true;
  }
}

// 재승씨 코드
// void main() {
//   CheckNum checkNum = CheckNum();
//
//   print(checkNum.findNum('44444'));
//   print(checkNum.findNum('23329'));
//
// }
//
//
// class CheckNum {
//   String findNum(String num) {
//     bool isGoodNumbers = true;
//
//     for(int i = 0; i < num.length - 1; i++) {
//       isGoodNumbers = isGoodNumbers && (num[i] == num[i + 1]);
//     }
//
//     return isGoodNumbers ? num : 'No';
//   }
// }
////////////////////////////////////////////////////

//  경환씨 코드
// void main() {
//   print(tester(4444));
// }
//
// String tester(int a) {
//   String result = '$a';
//   int num = a;
//
//   int digit = num % 10;
//   while (num > 0) {
//     if (digit != num % 10) {
//       result = 'No';
//     }
//     num = num ~/ 10;
//   }
//   return result;
// }

