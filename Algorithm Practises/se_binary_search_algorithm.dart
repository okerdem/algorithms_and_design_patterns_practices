void main() {
  List list = [1, 2, 3, 4, 5];
  int search = 4;
  int index = binarySearch(list, search);

  if (index == -1) {
    print("The element you searched is not in this list.");
  } else {
    print("The element you searched is in $index. index.");
  }
}

int binarySearch(List list, int search) {
  int left = 0;
  int right = list.length - 1;

  while (left <= right) {
    int mid = (left + right) ~/ 2;
    if (search == list[mid]) {
      return mid;
    } else if (list[mid] < search) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }
  return -1;
}
