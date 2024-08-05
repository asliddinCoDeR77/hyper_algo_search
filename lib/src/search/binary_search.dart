import 'package:hyper_algo_search/src/algorithm/search_algorith.dart';

class BinarySearch extends SearchAlgorithm {
  @override
  int search(List<dynamic> list, dynamic target) {
    if (list is! List<int>) {
      throw ArgumentError('BinarySearch only works with List<int>');
    }
    final stopwatch = Stopwatch()..start();
    int left = 0, right = list.length - 1;
    while (left <= right) {
      int middle = (left + right) ~/ 2;
      if (list[middle] == target) {
        stopwatch.stop();
        print(
            'Binary Search time: ${stopwatch.elapsedMicroseconds} microsecond');
        return middle;
      } else if (list[middle] < target) {
        left = middle + 1;
      } else {
        right = middle - 1;
      }
    }
    stopwatch.stop();
    print('Binary Search time: ${stopwatch.elapsedMicroseconds} microsecond');
    return -1;
  }
}
