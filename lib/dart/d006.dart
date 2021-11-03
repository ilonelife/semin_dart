/*
거리 n과 그 단위 s를 입력 받아 mm로 변환해 출력하시오

입력되는 거리의 단위는 km, m, cm의 3 종류로, 각각 다음과 같이 변환 할 수 있습니다.
1km = 1000m
1m = 100cm
1cm = 10mm
 */

void main() {
  print(exam(1, 'km'));
  print(exam(54, 'km'));
  print(exam(2, 'cm'));
  print(exam(12, 'm'));
}

int exam(int n, String s) {
  int result = 0;

  if (s == 'km') {
    result = n * 1000000;
  } else if (s == 'm') {
    result = n * 1000;
  } else if (s == 'cm') {
    return n * 10;
  }

  return result;
}
