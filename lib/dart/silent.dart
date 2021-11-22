import 'dart:convert';
import 'dart:io';

void main() {
  List<String> line = stdin.readLineSync(encoding: utf8).split(' ');
  int a = int.parse(line[0]);
  int b = int.parse(line[1]);
  int R = int.parse(line[2]);

  int N = int.parse(stdin.readLineSync(encoding: utf8));

  List<Tree> trees = [];
  for (int i = 0; i < N; i++) {
    //나무 좌표 입력
    List<String> coords = stdin.readLineSync(encoding: utf8).split(' ');
    int x = int.parse(coords[0]);
    int y = int.parse(coords[1]);

    Tree tree = Tree(x, y);
    trees.add(tree);
  }

  GongSa gongSa = GongSa(a, b, R);
  Park park = Park(trees, gongSa);

  for (final isSilent in park.getSilents()) {
    if (isSilent) {
      print('silent');
    } else {
      print('noisy');
    }
  }


}

class Park {
  List<Tree> trees;
  GongSa gongSa;

  Park(this.trees, this.gongSa);

  List<bool> getSilents() {
    List<bool> result = [];

    for (final tree in trees) {
      bool isSilent = (tree.x - gongSa.x) * (tree.x - gongSa.x) +
              (tree.y - gongSa.y) * (tree.y - gongSa.y) >=
          gongSa.R * gongSa.R;
    }
  }
}

class GongSa {
  int x;
  int y;
  int R;

  GongSa(this.x, this.y, this.R);
}

class Tree {
  int x;
  int y;

  Tree(this.x, this.y);
}
