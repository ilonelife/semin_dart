void main() {
  Word word = Word('aeiueoflutter');

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
  static const vowel = ['a', 'i', 'u', 'e', 'o'];

  Word(this.letters);

  // i번째 글자가 모음이면 true // a, i, u, e, o
  bool isVowel(int i) {
    return 'aiueoAIUEO'.contains(letters.substring(i, i + 1));
  }

  // i번째 글자가 자음이면 true
  bool isConsonant(int i) {
    return !isVowel(i);
  }

  // bool isVowel(int i) {
  //   bool result = false;
  //
  //   String oneword = letters.substring(i, i + 1);
  //   if (oneword == 'a' ||
  //       oneword == 'i' ||
  //       oneword == 'u' ||
  //       oneword == 'e' ||
  //       oneword == 'o') {
  //     return true;
  //   }
  //   return result;
  // }

}
