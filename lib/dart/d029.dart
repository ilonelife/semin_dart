/*
주사위의 한쪽면과 반대쪽 숫자의 합은 반드시 7이 된다. (1, 6) (2, 5) (3, 4)
한쪽면이 n일 경우 반대쪽 숫자는?
 */

void main() {
  int diceNum = 5;

  // Dice.num = 7;
  // Dice dice2 = Dice(7);
  Dice dice3 = Dice(num: 7);

  print(dice3.back(1));

  CalDiceNumber calDiceNumber = CalDiceNumber();

  print(calDiceNumber.findNum(diceNum));
}

class CalDiceNumber {
  int findNum(int num) {
    return 7 - num;
  }
}

// 여러 종류의 주사위를 만들 수 있다
class Dice {
  int num;

  Dice({this.num});   // main 에서 받아온 값을 위의 num 에 넣는다
// Dice([this.num]);
// Dice();
// Dice(this.num);

  int back(int n) {
    return num - n;
  }
}
