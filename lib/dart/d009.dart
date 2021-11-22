import 'dart:io';

/*
당신은 입력된 수를 판별하는 프로그램을 만들고 있습니다. 프로그램은 입력된 숫자의 각 자
리수가 모두 같은 숫자라면 그 숫자를 그대로 출력하고, 아니라면 "No"를 출력합니다.
숫자는 다음과 같이 주어집니다.
 */

void main() {
  bool result;

  SliceNum sliceNum = SliceNum();

  print('편별할 숫자를 입력하세요~');
  String yourNum = stdin.readLineSync();

  print(sliceNum.isSameNum(yourNum));

}

class SliceNum {
  String isSameNum(String num) {
    bool result = true;

    for (int i = 0; i < num.length - 1; i++) {
      result = result && (num[i] == num[i + 1]);
    }

    return result ? num : 'No';
  }
}
