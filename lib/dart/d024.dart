void main() {
  print(exam(60, 90));
  print(exam(45, 45));
}

int exam(int a, int b) {
  int result = 0;

  result = 180 - (a + b);

  return result;

  // return 180 - a - b;
}
