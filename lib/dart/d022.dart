/*
당신은 길에서 주운 오래된 PC에서 이미지를 표시하기 위해 그레이 스케일 이미지를 흑백
화상으로 변환하기로 했습니다.
그레이 스케일 이미지에서는 255 (흰색)부터 0 (검은 색)의 256 단계로 이미지를 표현합니
다.
0에 가까울수록 검은 색, 255에 가까울수록 흰색에 가까운 색입니다.
흑백에서는 단순히 1 (흰색)과 0 (검은 색)의 2 단계로 표현합니다.
따라서 그레이 화소 값을 흑과 백으로 변환해야 합니다. (화소는 이미지의 최소 단위의 점을
나타냅니다)
 */

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> input = [];
  String temp;

  String count = stdin.readLineSync(encoding: utf8);
  List<String> counts = count.split(' ');

  int h = int.parse(counts[0]);
  int w = int.parse(counts[1]);

  for (int i = 0; i < h; i++) {
    temp = stdin.readLineSync(encoding: utf8);
    input.add(temp);
  }

  GrayScale grayScale = GrayScale();

  grayScale.blackWhite(input, h, w);

}

class GrayScale {

  void blackWhite(List<String> input, int h, int w) {

    for (int i = 0; i < h; i++) {
      String number = input[i];
      List<String> temp = number.split(' ');
      String result = '';
      for (int j = 0; j < w; j++) {
        result += (int.parse(temp[j]) >= 128) ? '1' : '0';
        result += ' ';
      }
      print(result);
    }
  }
}