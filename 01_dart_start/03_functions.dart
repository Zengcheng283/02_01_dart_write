void main(List<String> args) {
  // enableFlags(bold: true, hidden: false);
  // require_used(num1: 1);
  // The named parameter 'num2' is required, but there's no corresponding argument.
  // Try adding the required argument.
  // require_used(num2: 2);
  // assert(say('Bob', 'Howdy') == 'Bob says Howdy');
  // assert(say('Bob', 'Howdy', 'smoke signal') ==
  // 'Bob says Howdy with a smoke signal');
  // bold will be true; hidden will be false.
  // flagFunction(bold: true);
  // assert(say_twice('Bob', 'Howdy') == 'Bob says Howdy with a carrier pigeon');
  // var list = [1, 2, 3];
  // list.forEach(printElement);

  // assert(loudify('hello') == '!!! HELLO !!!');

  // const list = ['apples', 'bananas', 'oranges'];
  // list.forEach((item) {
  //   print('${list.indexOf(item)}: $item');
  // });
  // equal to
  // list.forEach((item) => print('${list.indexOf(item)}: $item'));

  // Create a function that adds 2.
  // var add2 = makeAdder(2);

  // Create a function that adds 4.
  // var add4 = makeAdder(4);

  // assert(add2(3) == 5);
  // assert(add4(3) == 7);

  // assert(foo() == null);
}

/// Returns a function that adds [addBy] to the
/// function's argument.
Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}

foo() {}

var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';

late var _nobleGases;

bool isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;

// equal to:
// bool isNoble(int atomicNumber) {
//   return _nobleGases[atomicNumber] != null;
// }
//
// isNoble(atomicNumber) {
//   return _nobleGases[atomicNumber] != null;
// }

void enableFlags({bool? bold, bool? hidden}) {
  print("enableFlag run");
}

void require_used({int? num1, required int num2}) {
  print("require_used run");
}

String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

String say_twice(String from, String msg, [String device = 'carrier pigeon']) {
  var result = '$from says $msg with a $device';
  return result;
}

/// Sets the [bold] and [hidden] flags ...
void flagFunction({bool bold = false, bool hidden = false}) {
  print("flagFunction run");
}

void doStuff(
    {List<int> list = const [1, 2, 3],
    Map<String, String> gifts = const {
      'first': 'paper',
      'second': 'cotton',
      'third': 'leather'
    }}) {
  print('list:  $list');
  print('gifts: $gifts');
}

void printElement(int element) {
  print(element);
}
