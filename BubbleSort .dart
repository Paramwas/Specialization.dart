import 'dart:io';

void bubbleSortAscending(List<int> number) {
  int n = number.length;

  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (number[j] > number[j + 1]) {
        int jump = number[j];
        number[j] = number[j + 1];
        number[j + 1] = jump;
      }
    }
  }
}

void bubbleSortDescending(List<int> number) {
  int n = number.length;

  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (number[j] < number[j + 1]) {
        int jump = number[j];
        number[j] = number[j + 1];
        number[j + 1] = jump;
      }
    }
  }
}

void getUserInputAndSort() {
  print("Enter numbers separated by spaces:");
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print("No input provided!");
    return;
  }

  
  List<int> numbers = input
      .split(" ")
      .map((e) => int.tryParse(e) ?? 0) 
      .toList();

  print("Choose sorting order:\n1. Ascending\n2. Descending");
  String? choice = stdin.readLineSync();

  
  Stopwatch stopwatch = Stopwatch()..start();

  if (choice == "1") {
    bubbleSortAscending(numbers);
    stopwatch.stop();
    print("Sorted in Ascending Order: $numbers");
  } else if (choice == "2") {
    bubbleSortDescending(numbers);
    stopwatch.stop();
    print("Sorted in Descending Order: $numbers");
  } else {
    print("Invalid choice! Please enter 1 or 2.");
    return;
  }

  
  print("Sorting took: ${stopwatch.elapsedMilliseconds} ms");
}

void main() {
  getUserInputAndSort();
}
