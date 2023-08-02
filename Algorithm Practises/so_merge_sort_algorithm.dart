List<int> mergeSort(List<int> array) {
  if (array.length <= 1) {
    return array;
  }

  int splitIndex = array.length ~/ 2;

  List<int> leftArray = mergeSort(array.sublist(0, splitIndex));
  List<int> rightArray = mergeSort(array.sublist(splitIndex));

  return merge(leftArray, rightArray);
}

List<int> merge(List<int> leftArray, List<int> rightArray) {
  List<int> result = [];
  int? i = 0;
  int? j = 0;

  while (i! < leftArray.length && j! < rightArray.length) {
    if (leftArray[i] <= rightArray[j]) {
      result.add(leftArray[i]);
      i++;
    } else {
      result.add(rightArray[j]);
      j++;
    }
  }

  while (i! < leftArray.length) {
    result.add(leftArray[i]);
    i++;
  }

  while (j! < rightArray.length) {
    result.add(rightArray[j]);
    j++;
  }

  return result;
}

void main() {
  var arr0 = [1, 3, 5, 8, 2, 4, 6, 7, 7, 9];
  print(mergeSort(arr0));
}
