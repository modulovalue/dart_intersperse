import 'package:intersperse/intersperse.dart';
import 'package:test/test.dart';

void main() {
  group("intersperse extensions", () {
    test("0", () {
      expect(<int>[].intersperse(-1), <int>[]);
    });
    test("1", () {
      expect(<int>[1].intersperse(-1), <int>[1]);
    });
    test("2", () {
      expect(
        <int>[1, 2].intersperse(-1),
        <int>[1, -1, 2],
      );
    });
    test("3", () {
      expect(
        <int>[1, 2, 3].intersperse(-1),
        <int>[1, -1, 2, -1, 3],
      );
    });
    test("is lazy", () {
      final Iterable<int> sut = List.generate(1000000, (a) => a).intersperse(-1);
      expect(0, sut.first);
    });
    test('interval-2', () {
      expect(
        <int>[0, 0, 0, 0, 0, 0].intersperse(-1, interval: 2),
        <int>[0, 0, -1, 0, 0, -1, 0, 0],
      );
    });
    test('interval-3', () {
      expect(
        <int>[0, 0, 0, 0, 0, 0].intersperse(-1, interval: 3),
        <int>[0, 0, 0, -1, 0, 0, 0],
      );
    });
  });

  group("intersperseOuter extensions", () {
    test("0", () {
      expect(<int>[].intersperseOuter(-1), <int>[]);
    });
    test("1", () {
      expect(<int>[1].intersperseOuter(-1), <int>[-1, 1, -1]);
    });
    test("2", () {
      expect(<int>[1, 2].intersperseOuter(-1), <int>[-1, 1, -1, 2, -1]);
    });
    test("3", () {
      expect(<int>[1, 2, 3].intersperseOuter(-1), <int>[-1, 1, -1, 2, -1, 3, -1]);
    });
    test("is lazy", () {
      final Iterable<int> sut = List.generate(1000000, (a) => a).intersperseOuter(-1);
      expect(-1, sut.first);
    });
  });
}
