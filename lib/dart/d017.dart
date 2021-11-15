/*
5개의 수를 입력받아 최대값, 최소값 출력하기
*/
import 'dart:io';
import 'dart:math';

void main() {
  int count = 5;
 // final list = <int>[];
  List<int> list = [];

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

  int findMin(int count, List<int> list) {
    int minNum = 100;
    for (int i = 0; i < count; i++) {
      minNum = min(minNum, list[i]);
    }
    return minNum;
  }

  int findMax(int count, List<int> list) {
    int maxNum = 0;
    for (int i = 0; i < count; i++) {
      maxNum = max(maxNum, list[i]);
    }
    return maxNum;
  }
}

/*  재승씨 코드
void main() {
  print('5개 숫자를 입력하세요');

  List<int> inputNumbers = [];
  for (int i = 0; i < 5; i++) {
    inputNumbers.add(int.parse(stdin.readLineSync()));
  }

  Numbers numbers = Numbers([1, 2, 3, 4, 5]);

  print('최대값 : ${numbers.maxNumbers([1, 2, 3, 4, 5])}');
  print('최소값 : ${numbers.minNumbers()}');
}

class Numbers {
  List<int> numbers;

  Numbers(this.numbers);

  int maxNumbers(List<int> inputNumbers) {
    int maxNum = numbers[0];

    // 몇번 돌며 수행할지 신경 않써도 됨. 그냥 다 돌아...
    for (int n in numbers) {
      maxNum = max(maxNum, n);
    }

   // 위 반복문과 동일. 내가 몇 번 돌아야 하는지 신경 써야 함
   // for (int i; i < numbers.length; i++) {
   //   int n = numbers[i];
   //   maxNum = max(maxNum, n);
   // }

    return maxNum;
  }

  int minNumbers() {
    int minNum = numbers[0];

    for (int n in numbers) {
      minNum = min(minNum, n);
    }

    return minNum;
  }
}
 */


/*  다른 사람 코드

void main() {
  List<int> a = [9, 12, 3, 6, 10];
  print(maxMin(a));
}

String maxMin(List<int> intList) {
  intList.sort();
  return 'max: ${intList[intList.length -1]}  min: ${intList[0]}';
}

 */

/* 다른 사람 코드

void main() {
  InputInt inputInt = InputInt();
  inputInt.inputFunc([9, 12, 3, 5, 20]);
}

class InputInt {
  void inputFunc(List<int> inputList) {
    print(intputList.reduce(max));
    print(intputList.reduce(min));
  }

}
 */