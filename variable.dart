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
  // 초기 데이터 없이 변수를 선언할 수 있음 (클래스를 배워야 의미있는 키워드)
  // late 없이 변수 선언 후 클래스 초기화 하면 에러 발생.
  // late가 있을 경우, 나중에 메서드에서 초기화 가능.
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
  lateVariable();
}
