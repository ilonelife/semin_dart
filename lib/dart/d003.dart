

void main() {
  Cleric bedro = Cleric(name: '베드로', HP: 30, MP: 5);
  Cleric yohan = Cleric(name: '요한', HP: 15, MP: 7);
  Cleric ruga = Cleric(name: '루가', HP: 40, MP: 6);

  print(bedro.name);
  print(yohan.name);
  print(ruga.name);
  print('hi....');
}

class Cleric {
  String name;
  int HP;
  int MP;

  final int MaxHP = 50;
  final int MaxMP = 10;

  Cleric({this.name, this.HP, this.MP});
}