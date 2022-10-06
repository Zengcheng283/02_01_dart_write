void main(List<String> args) {
  // type_numbers();
  // num_to_string();
  // bit_operating();
  // type_str();
  // type_bool();
  // type_list();
  // type_sets();
  // type_maps();
}

void type_numbers() {
  // The dart provide two types of Numbers: int and double, you can see the different
  // from two key words. Int only 2^64 integer and double is 2^64 float.
  // Output:
  //    4611686018427387904
  //    -9223372036854775808
  //    0
  //    0
  // Which means it can not print from 2^63 to 2^65
  int number1 = 1;
  for (int i = 0; i < 65; i++) {
    number1 <<= 1;
    if (i >= 61) {
      print(number1);
    }
  }

  double number2 = 1.2e5;
  double number3 = 1.2;
  print('${number2}' + ' ' + '${number3}'); // output: 120000.0 1.2

  // Also you can use num to create, and the number can be used at both int and double.
  num number4;
  number4 = 1;
  number4 += 2.5;
  assert(number4 == 3.5);
}

void num_to_string() {
  // If you want to change string to num, you can use .parse.
  // Also, .toString is uesd to change num to string

  assert(1.toString() == "1");
  assert(int.parse("1") == 1);
  assert(double.parse("1.1") == 1.1);
  assert(1.1.toString() == "1.1");
}

void bit_operating() {
  // Also, the bit operating is adviced in dart, such as <<, >> and >>>, or ~, |,
  // & and ^.
  assert(-3 >> 1 == -2);
  assert(-3 >>> 1 == 9223372036854775806);
  assert(3 << 1 == 6);
  assert(3 | 4 == 7);
  assert(3 & 6 == 2);
  assert(3 ^ 6 == 5);
  print(3 & ~1 == 2);
}

void type_str() {
  String s = "This is check String";
  String p = "This is the other String";
  String m = """
  multi-String is created 
  like this type.
  """;

  assert("you can use '$s' to interpolation" ==
      "you can use 'This is check String' to interpolation");
  assert("you also can use '${s.substring(5, 7)}' to interpolation" ==
      "you also can use 'is' to interpolation");
  assert("you also can change all words to upper, just like this '${s.toUpperCase()}'" ==
      "you also can change all words to upper, just like this 'THIS IS CHECK STRING'");
  assert("you can use '+' to create new String: " + s + " " + p ==
      "you can use '+' to create new String: This is check String This is the other Strin");
  print(m);
  print("Use 'r' to ignore \n Just like this");
  print(r"Use 'r' to ignore \n Just like this");
}

void type_bool() {
  // you should check the value like this, because if and assert don't allow other type.
  bool boolVal = true;
  assert(boolVal == true);
  var nVar;
  assert(nVar == null);
  var zdevz = 0 / 0;
  assert(zdevz.isNaN);
  var name = '';
  assert(name.isEmpty);
}

void type_list() {
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);

  list[1] = 1;
  assert(list[1] == 1);

  var list2 = [0, ...list];
  assert(list2.length == 1);

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
}

void type_sets() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);
  assert(elements.length == 5);

  final constantSet = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };
// constantSet.add('helium'); // This line will cause an error.
}

void type_maps() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

// var gifts = Map<String, String>();
// gifts['first'] = 'partridge';
// gifts['second'] = 'turtledoves';
// gifts['fifth'] = 'golden rings';

// var nobleGases = Map<int, String>();
// nobleGases[2] = 'helium';
// nobleGases[10] = 'neon';
// nobleGases[18] = 'argon';

  gifts['fourth'] = 'calling birds'; // Add a key-value pair
  assert(gifts['first'] == 'partridge');
  assert(gifts['fifth'] == null);

  gifts.clear();
  gifts['first'] = 'partridge';
  gifts['fourth'] = 'calling birds';
  assert(gifts.length == 2);

  final constantMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  // constantMap[2] = 'Helium'; // This line will cause an error.
}
