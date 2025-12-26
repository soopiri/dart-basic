void collectionIf() {
  var flag = true;
  var numbers = [1, 2, 3, 4, if (flag) 5];
  print(numbers);
}

void collectionFor() {
  var numbers = [1, 2, 3, 4, 5];
  var doubled = [10, 9, 8, 7, 6, for (var number in numbers) number];
  print(doubled);
}

void maps() {
  Map<String, int> age = {'soopiri': 20, 'jake': 21, 'jane': 22};
  print(age);
}

void sets() {
  Set<int> numbers = {1, 2, 3, 4, 5};
  print(numbers);
}

void main() {
  // collectionIf();
  // collectionFor();
  // maps();
  sets();
}
