bool customEvery<T>(List<T> list, bool Function(T element) callback) {
  for (final element in list) {
    if (!callback(element)) {
      return false;
    }
  }

  return true;
}

void main() {
  final list = [2, 4, 6, 8];

  bool isEven(int number) => number - 2 == 0;

  final allEven = customEvery(list, isEven);

  print(allEven);
}
