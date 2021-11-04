

void main() {
  Cleric bedro = Cleric(name: '베드로', hp: 30, mp: 5);

  bedro.selfAid();

  print('성직자 이름은: ${bedro.name}\n 성직자 핼스: ${bedro.hp}\n 성직자 마법: ${bedro.mp}\n');
  print(bedro.introduce());
}

class Cleric {
  String name;
  int hp;
  int mp;

  final int maxHP = 50;
  final int maxMP = 10;

  Cleric({this.name, this.hp, this.mp});

  void selfAid() {
    // mp 5 소비하기
    mp = mp - 5;
    hp = maxHP;
  }

  String introduce() {
    return '$mp, $hp';
  }
}
