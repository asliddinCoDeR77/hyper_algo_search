import 'package:hyper_algo_search/src/algorithm/search_algorith.dart';

class LinearSearch extends SearchAlgorithm {
  @override
  int search(List<dynamic> list, dynamic target) {
    final stopwatch = Stopwatch()..start();
    for (int i = 0; i < list.length; i++) {
      if (list[i] == target) {
        stopwatch.stop();
        print(
            'Linear Search time: ${stopwatch.elapsedMicroseconds} microsecond');
        return i;
      }
    }
    stopwatch.stop();
    print('Linear Search time: ${stopwatch.elapsedMicroseconds} microsecond');
    return -1;
  }
}
