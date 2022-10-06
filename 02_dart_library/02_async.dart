import 'dart:async';

Future<void> runUsingAsyncAwait() async {
  var args = 2;
  var entryPoint = await findEntryPoint();
  try {
    var exitCode = await runExecutable(entryPoint, args);
    await flushThenExit(exitCode);
  } catch (e) {
    print("Find exception $e, print out");
  }
}

void runUsingFuture() {
  var args = 2;

  // ...
  findEntryPoint().then((entryPoint) {
    return runExecutable(entryPoint, args);
  }).then(flushThenExit);
}

Future<void> findEntryPoint() async {
  print("running findEntryPoint");
}

Future<void> runExecutable(void entryPoint, var args) async {
  print("running runExecutable, args is $args");
}

FutureOr<dynamic> flushThenExit(void entryPoint) async {
  print("running flushThenExit");
}

Future<void> costlyQuery(var url) async {
  print("running costlyQuery, url is $url");
}

Future<void> expensiveWork(var val) async {
  print("running expensiveWork, val is $val");
}

Future<void> lengthyComputation() async {
  print("running lengthyComputation");
}

void chained_async() {
  var url = "www.baidu.com";
  Future result = costlyQuery(url);
  result
      .then((value) => expensiveWork(value))
      .then((_) => lengthyComputation())
      .then((_) => print('Done!'))
      .catchError((exception) {
    /* Handle exception... */
  });
}

void main(List<String> args) {
  // runUsingFuture();
  // runUsingAsyncAwait();
  // chained_async();
}
