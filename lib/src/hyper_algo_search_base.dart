import 'dart:core';

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

  for (var algorithm in algorithms) {
    print('${algorithm.runtimeType} Index: ${algorithm.search(intList, 7)}');
  }

  print('Linear Search Index: ${LinearSearch().search(stringList, "cherry")}');
}
