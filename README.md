# Sorting Algorithms Comparison

## Bubble Sort

### How It Works:
Bubble Sort is a simple sorting algorithm that repeatedly steps through the list, compares adjacent elements, and swaps them if they are in the wrong order. The pass through the list is repeated until the list is sorted.

### Steps:
1. Iterate through the list multiple times.
2. Compare adjacent elements.
3. Swap them if they are in the wrong order.
4. Repeat until no more swaps are needed.

### Time Complexity:
- Best case (already sorted): **O(n)**
- Worst case (reverse sorted): **O(n²)**
- Average case: **O(n²)**

### Advantages:
- Simple and easy to implement.
- Works well for small datasets.

### Disadvantages:
- Very slow for large datasets.
- Not efficient compared to other sorting algorithms.

## Quick Sort

### How It Works:
Quick Sort is a divide-and-conquer algorithm that selects a pivot element and partitions the array into two halves: one with elements smaller than the pivot and one with elements greater than the pivot. It then recursively sorts both halves.

### Steps:
1. Choose a pivot element.
2. Partition the array so that elements smaller than the pivot go to the left and larger ones to the right.
3. Recursively apply the same logic to the left and right sub-arrays.

### Time Complexity:
- Best case: **O(n log n)**
- Worst case (if poorly chosen pivot): **O(n²)**
- Average case: **O(n log n)**

### Advantages:
- Much faster than Bubble Sort for large datasets.
- More efficient in practice with good pivot selection.

### Disadvantages:
- Can degrade to O(n²) if pivot selection is poor.
- Requires additional memory for recursive calls.

  # Combined Sorting (Bubble Sort vs. Quick Sort)

## Features
- Users can enter numbers manually or specify how many random numbers should be generated.
- Users can choose between ascending and descending order.
- The program will run both Bubble Sort and Quick Sort on the same dataset and display their execution times for comparison.

## Usage Instructions

### Run the combined sorting program:
```sh
dart combined.dart
```

### Choose input method:
1. Enter numbers manually.
2. Specify how many random numbers to generate.

### Choose sorting order:
- Ascending
- Descending

The program will compare the time taken by both sorting algorithms and display the results.


## Comparison Table

| Algorithm     | Best Case | Worst Case | Average Case | Space Complexity | Stability |
|--------------|----------|------------|--------------|------------------|-----------|
| Bubble Sort  | O(n)     | O(n²)      | O(n²)        | O(1)             | Yes       |
| Quick Sort   | O(n log n) | O(n²)    | O(n log n)   | O(log n) (recursive calls) | No |

## Usage Instructions on How to run both Quick sort and Bubblesort

- Run ` dart BubbleSort.dart` to test Bubble Sort.
- Run ` dart QuickSort.dart` to test Quick Sort.
- Enter a list of numbers and choose ascending or descending order.
- The program will measure and display the time taken for sorting.

