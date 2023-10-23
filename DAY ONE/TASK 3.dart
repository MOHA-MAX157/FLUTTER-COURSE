int customReducer(List<int> nums, int initial, Function(int acc, int el) func) {
  int acc = initial;
  for (int num in nums) {
    acc = func(acc, num);
  }
  return acc;
}

void main() {
  List<int> nums = [1, 2, 3, 4];
  Function(int acc, int el) func = (acc, el) => acc + el;
  int initial = 15;

  int reducedValue = customReducer(nums, initial, func);

  print(reducedValue);
}
