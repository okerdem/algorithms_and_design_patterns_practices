void main() {
  List list = [9, 7, 8, 6, 5, 4, 2, 3, 1, 0];
  print(bubbleSort(list));
}

List bubbleSort(List list) {
  bool swapped = false;
  for (var i = 0; i < list.length; i++) {
    for (var j = 0; j < list.length - 1; j++) {
      if (list[j] > list[j + 1]) {
        swap(list, j);
        swapped = true;
      }
    }
    if (!swapped) {
      break;
    }
  }
  return list;
}

void swap(List list, int j) {
  var temp = list[j];
  list[j] = list[j + 1];
  list[j + 1] = temp;
}
