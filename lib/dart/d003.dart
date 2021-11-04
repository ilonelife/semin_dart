void main() {
  Cleric bedro = Cleric(name: '베드로', hp: 30, mp: 5);
  Cleric yohan = Cleric(name: '요한', hp: 15, mp: 7);
  Cleric ruga = Cleric(name: '루가', hp: 40, mp: 6);

  print(bedro.name);
  print(yohan.name);
  print(ruga.name);

  print('''
  여기 3명의 성직자가 있다.  $bedro.name  
  ''');
}

class Cleric {
  String name;
  int hp;
  int mp;

  final int maxHP = 50;
  final int maxMP = 10;

  Cleric({this.name, this.hp, this.mp});

  void selfAid() {
    if(int i = 0; i < maxHP; i++) {
      mp -= 5;
    }
  }
}
