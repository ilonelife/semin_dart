import 'dart:math';
void main() {
  List<String> names = ['Java', 'Gino', 'Alice'];
  exam(names);
}

void exam(List<String> names) {
  String s = 'Hello';

  for (int i = 0; i < names.length; i++) {
    s = s + ' ' + names[i];

    if (i < names.length - 1) {
      s = s + ',';
    } else {
      s = s + '.';
    }
  }

  // s += names.join(', ') + '.';
  // s += names.reduce((val, names) => val + '. ' + names) + '.';

  print(s);

}
