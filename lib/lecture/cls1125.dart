void main() {
  Slime slime = Slime();
  Monster monster = Slime();

  Slime slime2 = monster;  // java에서는 않됨.

  slime.run();    //2
  monster.run();   // 2


}

abstract class Monster {
  void run() {
    print('1');
  }
}

class Slime extends Monster {
  @override
  void run() {
    print('2');
  }

}

class Wolf extends Monster {

}