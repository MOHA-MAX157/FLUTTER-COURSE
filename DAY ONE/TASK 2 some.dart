bool custom_some<T>(
    List<T> list, bool Function(T element) callback, bool condition) {
  var count = 0;
  for (final element in list) {
    if (callback(element) && condition) {
      count++;
    }
  }

  return count >= 2;
}

void main() {
  final list = [1, 2, 3, 4, 5];

  bool isEven(int number) => number - 2 == 0;

  final hasTwoEvenNumbers = custom_some(list, isEven, true);

  print(hasTwoEvenNumbers);
}
