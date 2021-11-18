// Algorithm 1.2: Add Array Elements - 리스트(배열) 원소의 합 구하기

int sum(n, List S) {
  var result = 0;
  for (var i in List.generate(n, (index) => index)) {
    result = (result + S[i]).toInt();
  }
  return result;
}

void main() {
  List S = [-1, 10, 7, 11, 5, 13, 8];
  int sumResult = sum(S.length, S);
  print('sum = $sumResult');
}
