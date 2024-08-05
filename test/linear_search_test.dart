import 'package:hyper_algo_search/src/search/linear_search.dart';
import 'package:test/test.dart';

void main() {
  group('LinearSearch Tests', () {
    final linearSearch = LinearSearch();

    test('Finds the element in the list', () {
      final intList = [1, 3, 5, 7, 9];
      expect(linearSearch.search(intList, 7), equals(3));
    });

    test('Returns -1 when the element is not in the list', () {
      final intList = [1, 3, 5, 7, 9];
      expect(linearSearch.search(intList, 8), equals(-1));
    });

    test('Finds the element in a string list', () {
      final stringList = ["apple", "banana", "cherry", "date"];
      expect(linearSearch.search(stringList, "cherry"), equals(2));
    });

    test('Returns -1 when the element is not in the string list', () {
      final stringList = ["apple", "banana", "cherry", "date"];
      expect(linearSearch.search(stringList, "grape"), equals(-1));
    });
  });
}
