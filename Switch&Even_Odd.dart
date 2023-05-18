// void main() {
//   var score = 90;
//   String grade;
//   switch (score / 10) {
//     case 10:
//     case 9:
//       grade = 'A+';
//       print('your grade $grade');
//       break;
//     case 8:
//       grade = 'b+';
//       break;
//     case 7:
//       grade = 'c+';
//       break;
//     case 6:
//       grade = 'd+';
//       break;
//     case 5:
//       grade = 'c';
//       break;
//     default:
//       grade:
//       'F';
//       break;
//   }
// }
import 'dart:io';
List<int> getOddNumbers(List<int> numbers) {
  List<int> oddNumbers = [];
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 != 0) {
      oddNumbers.add(numbers[i]);
    }
  }
  return oddNumbers;
}
void main() {
  // Take input from user
  print("Enter a list of integers, separated by commas:");
  String input = stdin.readLineSync()!;
  List<int> numbers = input.split(',').map(int.parse).toList();
  List<int> oddNumbers = getOddNumbers(numbers);
  // Print both input and output lists
  print("Input list: $numbers");
  print("Output list: $oddNumbers");
}