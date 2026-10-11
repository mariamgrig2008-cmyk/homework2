// 9. Գրել Future<String> runTask(String name, int milliseconds), որը սպասում է նշված
// ժամանակը եւ վերադարձնում է "Task <name> completed":
// Այնուհետեւ գրել Future<List<String>> runTasks(), որը գործարկում է.
// A → 100 ms
// B → 50 ms
// C → 150 ms
// Կարեւոր. երեք գործողությունները պետք է սկսվեն միաժամանակ, ոչ թե հաջորդաբար։
// Սակայն արդյունքը պետք է վերադարձվի A, B, C հերթականությամբ.

Future<String> runTask(String name, int milliseconds) async {
  await Future.delayed(Duration(milliseconds: milliseconds));
  return "Task $name completed";
}

Future<List<String>> runTasks() async {
  var a = runTask("A", 100);
  var b = runTask("B", 50);
  var c = runTask("C", 150);

  return [
    await a,
    await b,
    await c
  ];
}

void main() async {
  List<String> result = await runTasks();
  print(result);
}
