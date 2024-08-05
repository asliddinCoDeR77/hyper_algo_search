import 'dart:math';

import 'package:hyper_algo_search/src/algorithm/search_algorith.dart';

class JumpSearch extends SearchAlgorithm {
  @override
  int search(List<dynamic> list, dynamic target) {
    if (list is! List<int>) {
      throw ArgumentError('JumpSearch only works with List<int>');
    }
    final stopwatch = Stopwatch()..start();
    int n = list.length;
    int step = sqrt(n).toInt();
    int prev = 0;

    while (list[min(step, n) - 1] < target) {
      prev = step;
      step += sqrt(n).toInt();
      if (prev >= n) {
        stopwatch.stop();
        print('Jump Search time: ${stopwatch.elapsedMicroseconds} microsecond');
        return -1;
      }
    }

    for (int i = prev; i < min(step, n); i++) {
      if (list[i] == target) {
        stopwatch.stop();
        print('Jump Search time: ${stopwatch.elapsedMicroseconds} microsecond');
        return i;
      }
    }

    stopwatch.stop();
    print('Jump Search time: ${stopwatch.elapsedMicroseconds} microsecond');
    return -1;
  }
}
