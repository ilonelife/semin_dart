/*
이 놀이는 1에서 9까지의 숫자 카드만 4 장 사용합니다. 그러나 이 4 장에서 같은 숫자의 카
드가 중복될 수 있습니다. 규칙은 다음과 같습니다.
4 장의 카드를 나란히 합니다. 왼쪽 두 장, 오른쪽 두 장의 카드를 각각 2 자리의 정수로 보
고 합을 계산합니다. 모든 조합을 시도하고 합의 최대 값을 구합니다.
카드 4 장에 적힌 숫자가 주어지면 최대 점수를 출력합니다.
입력 예1의 2, 9, 3, 8의 4 장을 사용하는 경우 다음의 12 가지 결과가 나오게 되고 최대 값
은 175입니다.
이 카드 4 장의 나열방법을 계산해 보면 4! = 24 가지 존재하지만, 덧셈은 순서에 의존하지
않기 때문에 12 가지만을 고려하면 됨에 유의하십시오.
 */

void main() {
  List<int> cards = [9, 2, 3, 8];
  int n = 4;
  int r = 4;
  int depth = 0;

  List<int> result = [];
  List<bool> visited = [];

  Combination combination = Combination();

  combination.combiResult(cards, depth, n, r);

}

// 숫자 4개를 입력받고
// 4개 숫자를 뽑는다
// 2개 숫자를 만들고 더한다
// 이러한 결과를 리스트에 저장하고
// 최대값을 구한다


class Combination {
  List<int> result = [];
  List<bool> visited = [];

  void combiResult(List<int> arr, int depth, int n, int r ) {
    if (depth == r) {
      print_arr(arr, r);
      return;
    }

    for (int i = 0; i < n; i++) {
      if (visited[i] != true) {
        visited[i] = true;
        result[depth] = arr[i];
        combiResult(arr, depth, n, r);
        result[depth] = 0;
        visited[i] = false;
      }
    }
  }

  void print_arr(List<int> arr, int r) {
    for (int i =0; i < r; i++) {
      print(arr[i]);
    }
  }

  // int combiResult(List<int> arr, depth, int n, int r) {
  //
  //   if (depth == r) {
  //     print('$arr  $r');
  //     return 0;
  //   }
  //
  //   for (int i = depth; i < n; i++) {
  //     swap(arr, 4, i);
  //     combiResult(arr, depth+1, n, r);
  //     swap(arr, depth, i);
  //   }
  // }
  //
  // static void swap(List<int> arr, int depth, int i) {
  //   int temp = arr[depth];
  //   arr[depth] = arr[i];
  //   arr[i] = temp;
  // }
}
