void main() {
  Person person = Person('이일원', 51, 168.2, '남');
  Person person2 = Person('홍길', 28, 170.2, '남');
  Person person3 = Person('이일원', 51, 168.2, '남');
}

class Person {
  // property (속성)
  String name;
  int age;
  double height;
  String gender;

  // Constructor  생성자
  // 클래스를 생성하는 방법을 제공
  Person(this.name, this.age, this.height, this.gender);

}

