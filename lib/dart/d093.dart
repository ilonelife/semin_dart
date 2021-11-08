import 'dart:io';

/*
당신은 수를 열거하는 프로그램을 만들려고 한다. 그러려면 '자르기 좋은 숫자'를 발견해야 한다.
'자르기 좋은 숫자'란 다음 규칙을 따른다.

- 모든 숫자가 같아야 함

판별한 숫자 n 을 입력받아 조건에 맞으면 그 수를 그대로 출력하고
조건에 맞지 않으면 No를 출력하시오
 */

void main() {
  bool result;

  SliceNum sliceNum = SliceNum();

  print('자르기 좋은 숫자를 입력하세요');
  String yourNum = stdin.readLineSync();

  result = sliceNum.isSameNum(yourNum);

  if(result) {
    print(yourNum);
  } else {
    print('false');
  }

}

class SliceNum {
  String letters;

  SliceNum();

  bool isSameNum(String num) {
    letters = num[0];
    for (int i = 0; i < num.length; i++) {
      if (!letters.contains(num.substring(i, i + 1))) {
        return false;
      }
    }
    return true;
  }
}