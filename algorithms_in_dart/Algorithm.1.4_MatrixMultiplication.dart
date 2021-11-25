//** 행렬의 곱셈 문제
//- 두 n*n 행렬의 곱을 구하시오
// */

// Algorithm 1.4: Matrix Multiplication
dynamic matrixMult(n, A, B) {
  int n = A.length;
  List C = List.generate(
      n, (_) => List.generate(n, (_) => 0)); // #1 Create Nested List
  // List C = List.filled(n, List.filled(n, 0)); // #2 //
  // print(C);
  // print(D);
  // Q. C와 D는 같은 [[0, 0], [0, 0]]를 만드는데, 왜 D로 하면 원하는 값이 리턴되지않는거지?
  for (int i in List.generate(n, (index) => index)) {
    print(i);
    for (int j in List.generate(n, (index) => index)) {
      print(j);
      for (int k in List.generate(n, (index) => index)) {
        print(k);
        C[i][j] += A[i][k] * B[k][j];
        print(C);
      }
    }
  }
  return C;
}

void main() {
  int? n;
  var A = [
    [2, 3],
    [4, 1]
  ];
  var B = [
    [5, 7],
    [6, 8]
  ];

  print('A = $A');
  print('B = $B');

  var C = matrixMult(n, A, B);
  print('C = $C');
}
