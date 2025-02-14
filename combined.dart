import 'dart:io';
import 'dart:math';


void bubbleSortAscending(List<int> numbers) {
  int n = numbers.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (numbers[j] > numbers[j + 1]) {
        int temp = numbers[j];
        numbers[j] = numbers[j + 1];
        numbers[j + 1] = temp;
      }
    }
  }
}


void bubbleSortDescending(List<int> numbers) {
  int n = numbers.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (numbers[j] < numbers[j + 1]) {
        int temp = numbers[j];
        numbers[j] = numbers[j + 1];
        numbers[j + 1] = temp;
      }
    }
  }
}


void quickSort(List<int> arr, int low, int high, bool ascending) {
  if (low < high) {
    int pivotIndex = partition(arr, low, high, ascending);
    quickSort(arr, low, pivotIndex - 1, ascending);
    quickSort(arr, pivotIndex + 1, high, ascending);
  }
}


int partition(List<int> arr, int low, int high, bool ascending) {
  int pivot = arr[high];
  int i = low - 1;

  for (int j = low; j < high; j++) {
    if ((ascending && arr[j] < pivot) || (!ascending && arr[j] > pivot)) {
      i++;
      int temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
    }
  }

  int temp = arr[i + 1];
  arr[i + 1] = arr[high];
  arr[high] = temp;

  return i + 1;
}


List<int> generateRandomNumbers(int count) {
  Random random = Random();
  return List<int>.generate(count, (_) => random.nextInt(1000)); 
}

void compareSorting() {
  List<int> numbers;

  stdout.write("Do you want to enter numbers manually (M) or generate random numbers (R)? ");
  String inputType = stdin.readLineSync()!.trim().toUpperCase();

  if (inputType == 'M') {
    stdout.write("Enter numbers separated by spaces: ");
    numbers = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  } else {
    stdout.write("Enter the number of random numbers to generate: ");
    int count = int.parse(stdin.readLineSync()!);
    numbers = generateRandomNumbers(count);
    print("\nGenerated Numbers: $numbers");
  }

  stdout.write("Sort in Ascending (A) or Descending (D)? ");
  String choice = stdin.readLineSync()!.trim().toUpperCase();
  bool ascending = (choice == 'A');

  List<int> bubbleList = List.from(numbers);
  List<int> quickList = List.from(numbers);

  
  Stopwatch stopwatchBubble = Stopwatch()..start();
  if (ascending) {
    bubbleSortAscending(bubbleList);
  } else {
    bubbleSortDescending(bubbleList);
  }
  stopwatchBubble.stop();

  
  Stopwatch stopwatchQuick = Stopwatch()..start();
  quickSort(quickList, 0, quickList.length - 1, ascending);
  stopwatchQuick.stop();

  
  print("\nOriginal List: $numbers");
  print("\nBubble Sort (${ascending ? 'Ascending' : 'Descending'}): $bubbleList");
  print("Bubble Sort Time: ${stopwatchBubble.elapsedMilliseconds} ms");

  print("\nQuick Sort (${ascending ? 'Ascending' : 'Descending'}): $quickList");
  print("Quick Sort Time: ${stopwatchQuick.elapsedMilliseconds} ms");

  
  if (stopwatchBubble.elapsedMilliseconds < stopwatchQuick.elapsedMilliseconds) {
    print("\nBubble Sort was faster!");
  } else {
    print("\nQuick Sort was faster!");
  }
}

void main() {
  compareSorting();
}
