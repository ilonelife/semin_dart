import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

void main() {
  print(add(3, 5));
  print(add(3, 5, 8));
  print(add2(3, 5, c: 3, d: 5, e: 9));

  print(introduceSelt(name: '이일원', age: 51));
}

String introduceSelt({required String name, required int age,}) {
  return '나는 $name이고 $age 살 입니';
}

// optional positional parameter
int add(int a, int b, [int c = 0, int d = 0]) {
  return a + b + c + d;
}

// named parameter
int add2(int a, int b, {int c, int d, int e}) {
  return a + b + c + d + e;
}
