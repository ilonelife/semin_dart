/*
다음과 같이 A~Z 까지 알파벳 대문자 중에서 한 문자 s를 입력받습니다.
ABCDEFGHIJKLMNOPQRSTUVWXYZ

A를 1번째로 하면 C는 3번째입니다.
입력받은 문자가 몇 번째 문자인지 출력하시오
 */
import 'dart:io';

void main() {
  AlphabetWord word = AlphabetWord();

  print('대문자 알파벳 한 자를 입력하세요');
  String s = stdin.readLineSync();

  print('$s는 ${word.whichWord(s)}번째 글자입니다.');
}

class AlphabetWord {
  String alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

  int whichWord(String letters) {
      return alphabet.indexOf(letters) + 1;
  }
}
