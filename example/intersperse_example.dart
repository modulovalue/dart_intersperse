import 'package:intersperse/intersperse.dart';

void main() {
  final list1 = intersperse(2, <int>[]); // [];
  final list2 = intersperse(2, [0]); // [0];
  final list3 = intersperse(2, [0, 0]); // [0, 2, 0];
  final list1Outer = intersperseOuter(2, <int>[]); // [];
  final list2Outer = intersperseOuter(2, [0]); // [2, 0, 2];
  final list3Outer = intersperseOuter(2, [0, 0]); // [2, 0, 2, 0, 2];

  print(list1);
  print(list2);
  print(list3);
  print(list1Outer);
  print(list2Outer);
  print(list3Outer);
}
