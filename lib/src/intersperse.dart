/// Puts [element] between every element in [list].
///
/// Example:
///
///     final list1 = intersperse(2, <int>[]); // [];
///     final list2 = intersperse(2, [0]); // [0];
///     final list3 = intersperse(2, [0, 0]); // [0, 2, 0];
///     final list4 = intersperse(2, [0, 0, 0, 0, 0, 0], interval: 2); // [0, 0, 2, 0, 0, 2, 0, 0];
///
Iterable<T> intersperse<T>(T element, Iterable<T> iterable, {int interval = 1}) sync* {
  final iterator = iterable.iterator;
  if (iterator.moveNext()) {
    yield iterator.current;
    int x = 1;
    while (iterator.moveNext()) {
      if (x % interval == 0) yield element;
      yield iterator.current;
      x++;
    }
  }
}

/// Puts [element] between every element in [list] and at the bounds of [list].
///
/// Example:
///
///     final list1 = intersperseOuter(2, <int>[]); // [];
///     final list2 = intersperseOuter(2, [0]); // [2, 0, 2];
///     final list3 = intersperseOuter(2, [0, 0]); // [2, 0, 2, 0, 2];
///
Iterable<T> intersperseOuter<T>(T element, Iterable<T> iterable) sync* {
  final iterator = iterable.iterator;
  if (iterable.isNotEmpty) {
    yield element;
  }
  while (iterator.moveNext()) {
    yield iterator.current;
    yield element;
  }
}
