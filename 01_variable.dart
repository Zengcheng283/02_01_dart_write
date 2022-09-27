// websites: https://dart.cn/guides/language/language-tour#variables

void main(List<String> args) {
  varaiable();
  default_value();
  late_key();
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
  checkType(name);
  name = "123"; // 123 is String
  checkType(name);
  name = 123.123; // 123.123 is Double
  checkType(name);
  // It will show "A value of type 'int' can't be assigned to a variable of type 'String'."
  // var name_ini = "123";
  // name_ini = 123;
  dynamic name_dynamic = "Boy";
  checkType(name_dynamic);
  Object name_object = "Camie";
  checkType(name_object);
  String name_string = "Dane";
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

void default_value() {
  // If you can give the var a default value, you can add ? at the end of key
  // word.
  int? no_default_value;
  int default_value = 1;
  assert(no_default_value == null);
  assert(default_value == 1);
}

// The non-nullable variable 'not_use_late' must be initialized. Try adding an initializer expression.
// String not_use_late;
late String use_late;

void late_key() {
  // If the var will be uesd late but you want to create at start, you can use
  // late key word.
  // Report The value of the local variable 'not_use_late' isn't used. Try removing the variable or using it.
  // If you create var and not use late at top-level, it will report must be initialized,
  // but in a method it will not report this and use above instead.
  String not_use_late;
}

void final_and_const() {
  // If you use final as key word, the var can not be changed.
  final String use_final_var = "It uses final";
  // use_final_var = "change word"; // The final variable 'use_final_var' can only be set once. Try making 'use_final_var' non-final.

  // Also, if you use const to create a var, it can not ba changed as well.
  const String use_const_var = "It use const";
  // use_const_var = "change word"; // Constant variables can't be assigned a value. Try removing the assignment, or remove the modifier 'const' from the variable.
}
