#include <iostream>
using namespace std;

/**
 * Implements the "insertion sort" algorithm. The algorithm separates the array into two parts -- the sorted
 * and the unsorted part. Each element, starting at position 1, is examined. Everything earlier in the array
 * is in the sorted part, so the algorithm shifts each element over until the correct position is found for
 * the current lement. When the algorithm finishes with the last element, the entire array is sorted.
 */
void sort(int inArray[], int inSize) {
  // Start at poisition 1 and examine each element.
  for (int i = 1; i < inSize; ++i) {
    // Invariant: All elements in the range 0 to i-1 (inclusive) are sorted.
    int element = inArray[i];

    // j marks the position in the sorted part of the array.
    int j = i - 1;

    // As long as the current slot in the sorted array is higher than the element, shift the slot over and
    // move backwards.
    while (j >= 0 && inArray[j] > element) {
      inArray[j + 1] = inArray[j];
      j--;
    }

    // At this point the current position in the sorted array is *not* grater than the element, so this is its
    // new position.
    inArray[j + 1] = element;
  }
}

int main() {
  int array[] = {10, 9, 8, 7, 6, 5, 4, 3, 2, 1};
  int size = 10;

  cout << "Original: [ ";
  for (const auto& element : array) {
    cout << element << " ";
  }
  cout << "]" << endl;

  sort(array, size);

  cout << "Sorted:   [ ";
  for (const auto& element : array) {
    cout << element << " ";
  }
  cout << "]" << endl;

  return 0;
}
