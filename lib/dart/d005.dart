/*
아래와 같이 수열을 출력하는 프로그램을 짜시오
5 8 11 14 17 20 23 26 29 32

첫 숫자가 5이고 3씩 증가하는 것을 알 수 있다.
이것을 일반적으로 첫번째 숫자가 5이고 공차가 3인 등차수열이라고 부른다.

첫번째 숫자 m, 공차 n 이 주어졌을 때 10번째 숫자까지를 공백을 구분자로 출력하시오
 */

void main() {
  int resultNum = 5;
  int tolerance = 3;
  String result;
  List<int> sequence = [];

  for (int i = 0; i < 10; i++) {
    if (i == 0) {
      resultNum = 5;
      sequence.add(resultNum);
    } else {
      resultNum = resultNum + tolerance;
      sequence.add(resultNum);
      // sequence[i] = resultNum;  에러 남.. 왜지?
    }
  }
 print(sequence);
 // print(new String.fromCharCodes(sequence));
  result = sequence.toString();
  print(result);

}
