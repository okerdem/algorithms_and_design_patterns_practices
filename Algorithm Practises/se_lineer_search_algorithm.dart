void main() {
  List list = [1, 2, 3, 4, 5];
  int search = 7;
  int index = lineerSearch(list, search);

  if (index != -1) {
    print("The element you searched is in $index. index.");
  } else {
    print("The element you searched is not in this list.");
  }
}

int lineerSearch(List list, int search) {
  for (var i = 0; i < list.length; i++) {
    if (list[i] == search) {
      return i;
    }
  }
  return -1;
}
