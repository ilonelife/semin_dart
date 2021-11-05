void main() {
  Word word = Word('aeiueoflutter');

  // List<String> wordlist = word;
  // for (int i = 0; i < word.; i++) {
  //
  // }
  print(word.isVowel(0)); // true
  print(word.isVowel(1)); // false
  print(word.isVowel(2)); // false
  print(word.isVowel(3)); // false
  print(word.isVowel(4)); // true
  print(word.isVowel(5)); // true
  print(word.isVowel(6)); // true
  print(word.isVowel(7)); // true
  print(word.isVowel(8)); // true
}

class Word {
  String letters;
  String oneword;

//  List<String> oneword = List<String>(5);
  Word(this.letters);

  // i번째 글자가 모음이면 true // a, i, u, e, o
  bool isVowel(int i) {
    oneword = letters.substring(i, i + 1);
    if (oneword == 'a' ||
        oneword == 'i' ||
        oneword == 'u' ||
        oneword == 'e' ||
        oneword == 'o') {
      return true;
    } else {
      return false;
    }
  }

  // i번째 글자가 자음이면 true
  bool isConsonant(int i) {
    return false;
  }
}
