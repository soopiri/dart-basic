void sayHello(String name) {
  print('Hello, $name!'); // string interpolation
}

String sayHello2(String name) {
  return 'Hello, $name!';
}

String sayHello3(String name) => 'Hello, $name!';

void positionalParameters(String name, String nicName) {
  print('Hello, $name! ($nicName)');
}

void namedParameters({String? name}) {
  print('Hello, $name!');
}

void namedParameters2({required String name, required int age}) {
  print('Hello, $name!');
}

void namedParameters3({String name = 'default name'}) {
  print('Hello, $name!');
}

void optionalWithRequiredParameters(String name, [String? nickName]) {
  print('Hello, $name! ($nickName)');
}

String qqOperator([String? name]) {
  var result;

  // result = name != null ? name.toUpperCase() : 'Unknown';
  result = name?.toUpperCase() ?? 'Unknown';

  String? nullable;
  // nullable = 'keke';
  nullable ??= 'default value';
  print(nullable); // keke

  return result;
}

typedef IntList = List<int>;

IntList reverseList(IntList list) {
  var reversed = list.reversed.toList();
  return reversed;
}

void main() {
  // sayHello('soopiri');
  // print(sayHello2('soopiri'));
  // print(sayHello3('soopiri'));
  // positionalParameters('soopiri', 'soopiri nick name');
  // namedParameters(name: 'soopiri');
  // namedParameters2(name: 'soopiri', age: 20);
  // namedParameters3();
  // optionalWithRequiredParameters('soopiri');
  print(qqOperator());
}
