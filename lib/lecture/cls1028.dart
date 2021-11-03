import 'dart:math';

void main() {
  print(piEstimate(100000000));

}

double piEstimate(int tries) {
  double result = 0;
  int hits = 0;

  Random random = Random();

  for (int i = 0; i < tries; i++) {
    double x = random.nextDouble() * 2 - 1;
    double y = random.nextDouble() * 2 - 1;

    // (0,0)과 (x,y) 거리 계산
    double distance = sqrt(x * x + y * y);

    if (distance < 1) {
      hits++;
    }
  }

  result = hits * 4 / tries;

  return result;
}