List sort(List arr) {
  for (var secondNumber = 1; secondNumber < arr.length; secondNumber++) {
    var key = arr[secondNumber];
    var firstNumber = secondNumber - 1;
    while (firstNumber >= 0 && arr[firstNumber] > key) {
      arr[secondNumber] = arr[firstNumber];
      arr[firstNumber] = key;
      secondNumber = secondNumber - 1;
      firstNumber = firstNumber - 1;
    }
  }
  return arr;
}

void main() {
  var arr0 = [1, 3, 5, 8, 2, 4, 6, 7, 7, 9];
  print(sort(arr0));
}
