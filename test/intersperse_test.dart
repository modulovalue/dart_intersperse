import 'package:intersperse/intersperse.dart';
import 'package:test/test.dart';

void main() {
  group("intersperse", () {
    test("0", () {
      expect(intersperse(-1, <int>[]), <int>[]);
    });
    test("1", () {
      expect(intersperse(-1, <int>[1]), <int>[1]);
    });
    test("2", () {
      expect(
        intersperse(-1, <int>[1, 2]),
        <int>[1, -1, 2],
      );
    });
    test("3", () {
      expect(
        intersperse(-1, <int>[1, 2, 3]),
        <int>[1, -1, 2, -1, 3],
      );
    });
    test("is lazy", () {
      final Iterable<int> sut = intersperse(-1, List.generate(1000000, (a) => a));
      expect(0, sut.first);
    });
    test('interval-2', () {
      expect(
        intersperse(-1, <int>[0, 0, 0, 0, 0, 0], interval: 2),
        <int>[0, 0, -1, 0, 0, -1, 0, 0],
      );
    });
    test('interval-3', () {
      expect(
        intersperse(-1, <int>[0, 0, 0, 0, 0, 0], interval: 3),
        <int>[0, 0, 0, -1, 0, 0, 0],
      );
    });
  });

  group("intersperseOuter", () {
    test("0", () {
      expect(intersperseOuter(-1, <int>[]), <int>[]);
    });
    test("1", () {
      expect(intersperseOuter(-1, <int>[1]), <int>[-1, 1, -1]);
    });
    test("2", () {
      expect(intersperseOuter(-1, <int>[1, 2]), <int>[-1, 1, -1, 2, -1]);
    });
    test("3", () {
      expect(intersperseOuter(-1, <int>[1, 2, 3]), <int>[-1, 1, -1, 2, -1, 3, -1]);
    });
    test("is lazy", () {
      final Iterable<int> sut = intersperseOuter(-1, List.generate(1000000, (a) => a));
      expect(-1, sut.first);
    });
  });
}
