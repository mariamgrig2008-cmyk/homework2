// 6. Գրել Future<int> getNumber(int value) ֆունկցիա, որը.
// ● եթե value դրական է՝ 100 ms անց վերադարձնում է այն,
// ● եթե value <= 0 է՝ նետում է Exception։
// Գրել Future<int> safeGetNumber(int value) ֆունկցիա, որը օգտագործում է try/catch եւ
// սխալի դեպքում վերադարձնում է 0։

Future<int> getNumber(int value) async {
  if (value <= 0) {
    throw Exception("Բացասական թիվ է");
  }
  await Future.delayed(Duration(milliseconds: 100));
  return value;
}

Future<int> safeGetNumber(int value) async {
  try {
    return await getNumber(value);
  } catch (f) {
    return 0;
  }
}

void main() async {
  print(await safeGetNumber(5));
}
