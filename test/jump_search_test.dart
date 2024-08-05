import 'package:hyper_algo_search/src/search/jump_search.dart';
import 'package:test/test.dart';

void main() {
  group('JumpSearch Tests', () {
    final jumpSearch = JumpSearch();

    test('Finds the element in the list', () {
      final intList = [1, 3, 5, 7, 9];
      expect(jumpSearch.search(intList, 7), equals(3));
    });

    test('Returns -1 when the element is not in the list', () {
      final intList = [1, 3, 5, 7, 9];
      expect(jumpSearch.search(intList, 8), equals(-1));
    });

    test('Throws an error when used on a non-integer list', () {
      final stringList = ["apple", "banana", "cherry", "date"];
      expect(
          () => jumpSearch.search(stringList, "cherry"), throwsArgumentError);
    });
  });
}
