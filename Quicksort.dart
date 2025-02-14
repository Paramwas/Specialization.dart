import 'dart:io';

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

void main() {
  stdout.write("Enter numbers separated by spaces: ");
  List<int> numbers = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList(); 

  stdout.write("Sort in Ascending (A) or Descending (D)? ");
  String choice = stdin.readLineSync()!.trim().toUpperCase();
  bool ascending = (choice == 'A');

  print("\nOriginal List: $numbers");

  Stopwatch stopwatch = Stopwatch()..start(); 
  quickSort(numbers, 0, numbers.length - 1, ascending);
  stopwatch.stop(); 

  print("\nSorted List (${ascending ? 'Ascending' : 'Descending'}): $numbers");
  print("Sorting took: ${stopwatch.elapsedMilliseconds} ms");
}
