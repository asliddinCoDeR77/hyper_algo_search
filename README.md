
# HyperAlgoSearch

HyperAlgoSearch is a Dart package that provides various search algorithms with performance measurement for Flutter and Dart applications. It includes Linear Search, Binary Search, and Jump Search algorithms, making it easy to perform searches on different types of lists efficiently.

## Features

- **Linear Search:** A straightforward search algorithm that checks each element sequentially.
- **Binary Search:** A fast search algorithm for sorted lists, using a divide-and-conquer approach.
- **Jump Search:** An algorithm that divides the list into blocks and performs linear searches within the blocks.
- **Performance Measurement:** Measures the time taken to perform searches and prints the execution time.

## Getting Started

To start using the `hyper_algo_search` package, add it to your project's `pubspec.yaml` file:

```
yaml
dependencies:
  hyper_algo_search: ^0.0.1
```

Then, run `flutter pub get` to install the package.

## Usage

Here's a short example to get you started:

```
import 'package:hyper_algo_search/hyper_algo_search.dart';

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
    print('\${algorithm.runtimeType} Index: \$index');
  }

  print('\nString List Search Results:');
  final linearSearch = LinearSearch();
  final stringIndex = linearSearch.search(stringList, "cherry");
  print('LinearSearch Index: \$stringIndex');
}
```

## Example

For a more comprehensive example, check the [example](example/hyper_algo_search_example.dart) provided in the package.

## Additional Information

### Documentation

For detailed API documentation, visit the [Dart API reference](https://pub.dev/documentation/hyper_algo_search/latest/).

### Contributing

Contributions are welcome! If you find a bug or have a feature request, please open an issue on [GitHub](https://github.com/asliddinCoDeR77/hyper_algo_search/issues).

### License

This project is licensed under the MIT License. See the [LICENSE](https://github.com/asliddinCoDeR77/hyper_algo_search/blob/main/LICENSE) file for more information.
