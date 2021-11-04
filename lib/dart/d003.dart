import 'dart:math';

void main() {
  // 타입 변수명 = 값
  // int i = 10;
  // Cleric타입 cleric이름으로 = 클래릭을 만들자
  Cleric cleric = Cleric(name: '이일원', hp: 50, mp: 10);
  final cleric2 = Cleric(name: '홍길동');
  final cleric3 = Cleric();

  print('''
  성직자 이름은: ${cleric.name}
  핼스: ${cleric.hp}
  마법: ${cleric.mp}
  ----------------''');

  cleric.selfAid();
  print('''
  
  셀프 에이드 마법 사용으로 마법 ${cleric.mp} 으로 줄어 듬.
  ''');

  print('''
  3초 기도 후 마법이 ${cleric.pray(3)} 증가
  ''');

  print('''
  현재 핼스: ${cleric.hp}
  현재 마법: ${cleric.mp}''');
}

class Cleric {
  String name;
  int hp;
  int mp;

  final int maxHp = 50; // 최대 HP
  final int maxMp = 10;

  Cleric({this.name, this.hp, this.mp});

  void selfAid() {
    mp -= 5;
    hp = maxHp;
  }

  /* 회복량은 기도한 시간(초)에 랜덤하게 0 ~ 2포인트의 보정을 한 양이다 (3초 기도하면 회복량은 3 ~ 5 포인트).
  단, 최대 MP 보다 더 회복하는 것은 불가능 하다.
   */
  int pray(int sec) {
    int prayMp = 0;

    prayMp = min((sec + Random().nextInt(3)), maxMp);

    mp = mp + prayMp;
    return mp;
  }

  String introduce() {
    return '$hp, $mp';
  }
}
