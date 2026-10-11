// 8. Գրել List<int> findPair(List<int> numbers, int target) ֆունկցիա, որը պետք է
// վերադարձնի երկու թվերի ինդեքսները, որոնց արժեքների գումարը հավասար է
// target-ին։ Եթե այդպիսի զույգ չկա, վերադարձնել դատարկ ցուցակ։

List<int> findPair(List<int> numbers, int target) {
  for (int i = 0; i < numbers.length; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[i] + numbers[j] == target) {
        return [i, j];
      }
    }
  }
  return [];
}
void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  int target = 5;
  print(findPair(numbers, target));
}
