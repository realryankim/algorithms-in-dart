int seqSearch(int n, List<int> S, int x) {
  int location = 0;

  while (location <= n && S[location] != x) {
    location += 1;
  }
  if (location > n) {
    location = -1;
  }
  return location;
}

void main() {
  List<int> S = [0, 10, 7, 11, 5, 13, 8];
  int x = 5;
  int location = seqSearch(S.length - 1, S, x);
  print('location: $location');

  x = 2;
  location = seqSearch(S.length - 1, S, x);
  print('location: $location');
}
