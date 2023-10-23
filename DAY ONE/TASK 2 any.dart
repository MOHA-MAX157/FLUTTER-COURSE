bool custom_any<T>(List<T> list, bool Function(T element) callback) {
  for (final element in list) {
    if (callback(element)) {
      return true;
    }
  }

  return false;
}

void main() {
  final list = [1, 2, 3, 4, 5];

  bool isEven(int number) => number - 2 == 0;

  final hasEvenNumbers = custom_any(list, isEven);

  print(hasEvenNumbers);
}
