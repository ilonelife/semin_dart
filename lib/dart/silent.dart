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
      bool isSilent = gongSa.getSilent(tree);
      result.add(isSilent);

      // bool isSilent = (tree.x - gongSa.x) * (tree.x - gongSa.x) +
      //         (tree.y - gongSa.y) * (tree.y - gongSa.y) >=
      //     gongSa.R * gongSa.R;
    }

    return result;
  }
}

class GongSa {
  final int x;
  final int y;
  final int R;

  GongSa(this.x, this.y, this.R);

  bool getSilent(Tree tree) {
    return (tree.x - x) *(tree.x - x) + (tree.y - y) * (tree.y - y) >= R * R;
  }
}

class Tree {
  final int x;
  final int y;

  Tree(this.x, this.y);
}
