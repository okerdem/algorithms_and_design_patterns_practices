void main() {
  List list = [1, 2, 3, 4, 5];
  lineerSearch(list, 3);
}

void lineerSearch(List list, var search) {
  var index = -1;
  for (var i = 0; i < list.length; i++) {
    if (list[i] == search) {
      index = i;
      break;
    }
  }

  if (index != -1) {
    print("The element you searched is in $index. index.");
  } else {
    print("The element you searched is not in this list.");
  }
}
