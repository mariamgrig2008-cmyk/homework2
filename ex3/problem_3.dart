// 3. Գրել. Future<int> delayedValue(int value), որը 100 ms անց վերադարձնում է
// value-ն։ Այնուհետեւ գրել Future<int> sumValues(int a, int b), որը պետք է
// օգտագործի delayedValue() երկու թվերի համար եւ վերադարձնի դրանց գումարը։

Future<int> delayedValue(int value) async {
  await Future.delayed(Duration(milliseconds: 100));
  return value;
}

Future<int> sumValues(int a, int b) async {
  var x = delayedValue(a);
  var y = delayedValue(b);
  int num1 = await x;
  int num2 = await y;
  return num1 + num2;
}
void main() async {
  var result = sumValues(5, 10);
  print(await result);
}
