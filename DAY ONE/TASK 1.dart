void main() {
  //TASK ONE
  List<int> customMap<int>(List<int> list, int Function(int element) callback,
      [bool changeList = false]) {
    final newList = <int>[];
    for (final element in list) {
      newList.add(callback(element));
    }

    return newList;
  }

  final list = [1, 2, 3, 4];

  final squaredList = customMap(list, (element) => element * 2, false);

  print(squaredList);
}
