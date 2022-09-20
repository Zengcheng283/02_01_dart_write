# dart_server_dev

test2-01: [00_helloWorld](00_helloWorld.dart)

```dart
// If you want to run the first simple programme, you can write code like this
//
// void main() {
//   print("Hello World!");
// }
//
//
// And you can see ``Run|Debug`` at head of the main method,
// click Run and the programme will run and the conslone will print ``"Hello World!"``

void main() {
  print("Hello World!");
}
```

test2-02: [01_dart_lang_variable](01_dart_lang_variable.dart)

```dart
void main(List<String> args) {
  varaiable();
}

// If you use var to create a variable and don't give it an initial value,
// it can be give 123 or "123".
//
// If you use Object or dynamic to create, the variable will be checked when
// compile if you use Object and will not be checked when use dynamic.
//
// And if you use String, the variable will only give String.
void varaiable() {
  var name;
  name = 123; // 123 is Int
  print(name);
  checkType(name);
  name = "123"; // 123 is String
  print(name);
  checkType(name);
  name = 123.123; // 123.123 is Double
  print(name);
  checkType(name);
  // It will show "A value of type 'int' can't be assigned to a variable of type 'String'."
  // var name_ini = "123";
  // name_ini = 123;
  dynamic name_dynamic = "Boy";
  print(name_dynamic);
  checkType(name_dynamic);
  Object name_object = "Camie";
  print(name_object);
  checkType(name_object);
  String name_string = "Dane";
  print(name_string);
  checkType(name_string);
}

void checkType(var value) {
  if (value is String) {
    print("${value} is String");
  } else if (value is int) {
    print("${value} is Int");
  } else if (value is double) {
    print("${value} is Double");
  }
}
```
