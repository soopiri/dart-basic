void helloWorld() {
  print('Hello, World!');
}

void varKeyword() {
  var name = 'soopiri'; // dart compiler가 추론해서 타입을 결정
  name = 1.toString(); // 타입 변경 가능
  print(name);

  String name2 = 'soopiri'; // 타입 명시적 선언
  print(name2);

  // 관습적으로 함수나 메소드 내부에 지역 변수를 선언할 때에는 var를 사용함
  // Class에서 변수나 property를 선언할 떄는 타입을 지정해 줌
}

void dynamicType() {
  var dd; // 타입 동적 선언 (= dynamic dd)
  dd = 'soopiri';
  dd = 1;
  print(dd);

  // dynamic : 여러 타입을 가질 수 있는 변수에 사용하는 키워드
  dynamic name = 'soopiri'; // 타입 동적 선언
  print(name);

  name = 1; // 타입 변경 가능
  print(name);

  dynamic duo;
  if (duo is String) {
    // duo가 String 타입임을 확신할 수 있고, 그 타입에 대한 메소드를 사용할 수 있다.
  }

  // 이상적으로 dynamic type을 사용하지 않는 것이 좋음
}

void nullSafety() {
  // null safety : 변수가 null값을 참조할 수 없도록하여, 런타임에 발생할 수 있는 널 참조(Null Reference) 오류를 방지함.
  // 기본적으로 변수가 null값을 가질 수 없도록 설정되어 있음.
  // 개발자가 명시적으로 허용한 경우에만 null값을 가질 수 있음.

  String soopiri = 'soopiri';
  // soopiri = null; // error
  print(soopiri);

  String? soopiri2 = 'soopiri'; // nullable type : 변수가 null값을 가질 수 있도록 설정된 타입
  soopiri2 = null; // ok
  var temp;
  //  temp = soopiri2.length -> error

  temp = soopiri2?.length; // ok
  print(temp);

  if (soopiri2 != null) {
    temp = soopiri2.length; // ok
  } else {
    temp = 0;
  }

  print(temp);
}

void finalVariable() {
  final x = 1; // final 변수는 한 번 선언된 값을 변경할 수 없음. (= const)
  final int y = 1;
  // x = 2; // error

  print(x);
  print(y);
}

void lateVariable() {
  // late
  // 초기 데이터 없이 변수를 선언할 수 있음 (클래스를 배워야 의미있는 키워드라 할 수 있음)
  // late 없이 변수 선언 후 클래스 초기화 하면 에러 발생.
  // late가 있을 경우, 나중에 메서드에서 초기화 가능.
  
  late final String name;
  // print(name); // error - late variable is not initialized yet.
  
  // do something, ex: go to api
  
  name = 'data from api';
  print(name);
}

void constantVariable() {
  // javascript, typescript의 const와는 다름 -> final과 비슷함
  // dart에서는 compile-time constant를 만들어 줌. 
  // compile 되는 시점에 해당 값이 결정되기 때문에, 런타임에 값이 변경될 수 없음. (ex. api 호출 결과 값 등)
  const API_KEY = '1234567890';
  print(API_KEY);
}

void recap() {
  // dart stype guide에 따르면 함수 내에서는 var를 사용하는것을 권장.
  // Class property는 타입을 명시적으로 선언하는것을 권장.
  String a = 'a';
  a='b';
  var b = 'b';
  b=1.toString();
  final c = 'c'; 
  print(a);
  print(b);
  print(c);

  // dynamic type은 조심스럽게 사용해야 함 - 어떤 데이터가 들어오는지 모른다는 뜻
  // var의 경우, 컴파일 시점에 타입이 고정되며, 이후 해당 변수는 해당 타입으로만 사용이 가능함.
  // dynamic의 경우, 타입이 고정되지 않아 컴파일타임에도 오류가 나지 않음
  // 정말로 타입이 여러 형태로 바뀌는 경우에만 조심스럽게 사용
  // 특정 타입이 제공하는 함수를 사용하기 위해선 type check를 해야 함
  dynamic d = 'd';
  d = 1;
  d = false;
  print(d);

  // const -> 컴파일 시점에 값이 결정됨. 런타임에 값이 변경될 수 없음. (ex. api 호출 결과 값 등)
  const API_KEY = '1234567890';
  print(API_KEY);

  // null safety -> 변수가 null을 참조할 수 없도록 함
  String name = 'soopiri';
  // name = null; // error
  print(name);

  String? name2 = 'soopiri';
  name2 = null; // ok
  print(name2);

  // late -> 초기 데이터 없이 변수를 선언할 수 있음 (클래스를 배워야 의미있는 키워드라 할 수 있음)
  late String name3;
  name3 = 'soopiri';
  print(name3);
}

// main : Dart 프로그램의 Entry Point (필수)
void main() {
  // 세미콜론 필수 (formatter가 세미콜론을 자동으로 추가해주지 않음)
  // 일부러 세미콜론을 안 쓸 경우가 있음 (cascade operator)

  // helloWorld();
  // varKeyword();
  // dynamicType();
  // nullSafety();
  // finalVariable();
  // lateVariable();
   constantVariable();
}
