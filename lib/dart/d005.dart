void main() {
  print(calcTriangleArea(bottom: 1.5, height: 2.5));
}

double calcTriangleArea({required double bottom, required double height}) {
  double result = bottom * height / 2;

  return result;
}

// void main() {
//   emailMethod(address: '경기도 안산시', text: '안녀하세요. 회신 바랍니다');
// }
//
// void emailMethod({String title = '제목없음', String address = '', String text = ''}) {
//   print('$address에 아래의 메일을 송신한다');
//   print('제목: $title');
//   print('본문: $text');
// }

// void main() {
//   introduceOneself(name: '이일원', age: 51, length: 167.5, gender: '남');
// }
//
// void introduceOneself(
//     {String name = '', int age = 0, double length = 0, String gender = ''}) {
//   print('내 이름은 $name이고, 나이는 $age살입니다. 키는 $length cm 그리고 $gender 입니다');
// }
