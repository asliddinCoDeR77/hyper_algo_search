import 'package:hyper_algo_search/src/search/binary_search.dart';
import 'package:hyper_algo_search/src/search/jump_search.dart';
import 'package:hyper_algo_search/src/search/linear_search.dart';

void main() {
  final intList = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19];
  final stringList = ["apple", "banana", "cherry", "date"];

  final algorithms = [
    LinearSearch(),
    BinarySearch(),
    JumpSearch(),
  ];

  print('Integer List Search Results:');
  for (var algorithm in algorithms) {
    final index = algorithm.search(intList, 7);
    print('${algorithm.runtimeType} Index: $index');
  }

  print('\nString List Search Results:');
  final linearSearch = LinearSearch();
  final stringIndex = linearSearch.search(stringList, "cherry");
  print('LinearSearch Index: $stringIndex');
}
