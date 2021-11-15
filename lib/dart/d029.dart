/*
주사위의 한쪽면과 반대쪽 숫자의 합은 반드시 7이 된다. (1, 6) (2, 5) (3, 4)
한쪽면이 n일 경우 반대쪽 숫자는?
 */

void main() {
  int diceNum = 5;

  CalDiceNumber calDiceNumber = CalDiceNumber();

  print(calDiceNumber.findNum(diceNum));
}

class CalDiceNumber {

  int findNum(int num) {
    return 7 - num;
  }

}