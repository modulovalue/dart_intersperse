/// Puts [element] between every element in [list].
///
/// Example:
///
///     final list1 = intersperse(2, <int>[]); // [];
///     final list2 = intersperse(2, [0]); // [0];
///     final list3 = intersperse(2, [0, 0]); // [0, 2, 0];
///
Iterable<T> intersperse<T>(T element, Iterable<T> list) {
  if (list.isEmpty) {
    return [];
  }
  final List<T> a = list.fold(<T>[], (Iterable<T> prev, cur) {
    return <T>[...prev, element, cur];
  })
    ..removeAt(0);

  return a;
}

/// Puts [element] between every element in [list] and at the bounds of [list].
///
/// Example:
///
///     final list1 = intersperseOuter(2, <int>[]); // [];
///     final list2 = intersperseOuter(2, [0]); // [2, 0, 2];
///     final list3 = intersperseOuter(2, [0, 0]); // [2, 0, 2, 0, 2];
///
Iterable<T> intersperseOuter<T>(T element, Iterable<T> list) {
  if (list.isEmpty) {
    return [];
  }
  final a =
      list.fold(<T>[], (Iterable<T> prev, cur) => <T>[...prev, element, cur]);
  return [
    ...a,
    element,
  ];
}
