void main() {
  d002(10, 20);
  d002(3, 3);
  repeatString(5, 'a');
}

void repeatString(int n, String s) {
  for (int i = 0; i < n; i++) {
    print(s);
  }
}

void d002(int a, int b) {

  if (a > b) {
    print (a);
  } else if (a == b) {
    print ('eq');
  } else {
    print (b);
  }

}
