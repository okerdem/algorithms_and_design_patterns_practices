void main() {
  var list = [8, 5, 3, 6, 4, 2, 1, 9, 7];
  print(selectionSort(list));
}

List selectionSort(List list) {
  var min;
  bool flag;
  for (var i = 0; i < list.length; i++) {
    min = i;
    flag = false;
    for (var j = i; j < list.length; j++) {
      if (list[j] < list[min]) {
        min = j;
        flag = true;
      }
    }
    if (flag) {
      swap(min, i, list);
    }
  }
  return list;
}

void swap(var min, var i, List list) {
  var key = list[i];
  list[i] = list[min];
  list[min] = key;
}
