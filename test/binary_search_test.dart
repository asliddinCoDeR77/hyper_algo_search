import 'package:hyper_algo_search/src/search/binary_search.dart';
import 'package:test/test.dart';

void main() {
  group('BinarySearch Tests', () {
    final binarySearch = BinarySearch();

    test('Finds the element in the list', () {
      final intList = [1, 3, 5, 7, 9];
      expect(binarySearch.search(intList, 7), equals(3));
    });

    test('Returns -1 when the element is not in the list', () {
      final intList = [1, 3, 5, 7, 9];
      expect(binarySearch.search(intList, 8), equals(-1));
    });

    test('Throws an error when used on a non-integer list', () {
      final stringList = ["apple", "banana", "cherry", "date"];
      expect(
          () => binarySearch.search(stringList, "cherry"), throwsArgumentError);
    });
  });
}
