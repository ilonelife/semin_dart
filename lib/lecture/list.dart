void main() {
  List<int> nums = [1, 2, 3, 4, 5];

  int total = 0;
  for (int i = 0; i < nums.length; i++) {
    total = total + i;
  }

  print(total);

  nums.add(10);
  nums.remove(10);

  // print(nums);
  //
  // nums[0] = 10;
  // print(nums);
  // print(nums[0]);
  // print(nums[4]);
  // print(nums[5]);

  // for (int i = 0; i < nums.length; i++) {
  //   print(nums[i]);
  // }
}