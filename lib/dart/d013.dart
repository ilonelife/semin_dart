/*
정수 m과 n이 주어졌을 때
m을 n으로 나눈 몫과 나머지를 출력하라
 */

void main() {
  int m = 20;
  int n = 3;

  ShareRemainder shareRemainder = ShareRemainder();

  print('$m 나누기 $n 계산');
  print('몫    : ${shareRemainder.resultShare(m, n)}');
  print('나머지 : ${shareRemainder.resultReaminder(m, n)}');
}

class ShareRemainder {
  int resultShare(int m, int n) {

    return m ~/ n;
  }

  int resultReaminder(int m, int n) {
    return m % n;
  }
}