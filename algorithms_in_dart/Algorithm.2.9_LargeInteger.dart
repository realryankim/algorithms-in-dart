// 2.6 큰 정수의 계산법
// Algorithm 2.9: Arithmetic for Large Integers

List ladd(List u, List v) {
  int n = u.length > v.length ? u.length : v.length;
  List result = [];
  int carry = 0;
  for (int k in List.generate(n, (index) => index)) {
    int i = k < u.length ? u[k] : 0;
    int j = k < v.length ? v[k] : 0;
    int value = i + j + carry;
    carry = value ~/ 10;
    result.add(value % 10);
  }
  if (carry > 0) {
    result.add(carry);
  }
  return result;
}

void main() {
  // TEST 1
  List u = [3, 2, 1];
  List v = [5, 4];
  print(123 + 45);
  print(ladd(u, v).reversed.toList());

  // TEST 2
  List x = [2, 3, 8, 7, 6, 5];
  List y = [3, 2, 7, 3, 2, 4, 9];
  print(567832 + 9423723);
  print(ladd(x, y).reversed.toList());
}
