import 'dart:io';

void main() {
  stdout.write("Enter the number of Fibonacci numbers to generate: ");
  String? input = stdin.readLineSync();
  int? n = int.tryParse(input!);

  if (n == null || n <= 0) {
    print("Please enter a valid positive integer.");
    return;
  }

  List<int> fibonacciSeries = generateFibonacciSeries(n);
  
  print("Fibonacci Series:");
  for (int number in fibonacciSeries) {
    print(number);
  }
}

List<int> generateFibonacciSeries(int n) {
  List<int> series = [];
  if (n == 1) {
    series.add(0);
  } else if (n >= 2) {
    series.addAll([0, 1]);
    for (int i = 2; i < n; i++) {
      series.add(series[i - 1] + series[i - 2]);
    }
  }
  return series;
}
