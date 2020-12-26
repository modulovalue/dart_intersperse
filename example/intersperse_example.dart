import 'package:intersperse/intersperse.dart';

void main() {
  final list1 = intersperse(2, <int>[]); // [];
  final list2 = intersperse(2, [0]); // [0];
  final list3 = intersperse(2, [0, 0]); // [0, 2, 0];
  final list1Outer = intersperseOuter(2, <int>[]); // [];
  final list2Outer = intersperseOuter(2, [0]); // [2, 0, 2];
  final list3Outer = intersperseOuter(2, [0, 0]); // [2, 0, 2, 0, 2];

  print("> intersperse");
  print(list1);
  print(list2);
  print(list3);

  print("> intersperseOuter");
  print(list1Outer);
  print(list2Outer);
  print(list3Outer);

  final list1Extension = <int>[].intersperse(2); // [];
  final list2Extension = [0].intersperse(2); // [0];
  final list3Extension = [0, 0].intersperse(2); // [0, 2, 0];
  final list1OuterExtension = <int>[].intersperseOuter(2); // [];
  final list2OuterExtension = [0].intersperseOuter(2); // [2, 0, 2];
  final list3OuterExtension = [0, 0].intersperseOuter(2); // [2, 0, 2, 0, 2];

  print("> IntersperseExtensions");
  print(list1Extension);
  print(list2Extension);
  print(list3Extension);
  print(list1OuterExtension);
  print(list2OuterExtension);
  print(list3OuterExtension);
}
