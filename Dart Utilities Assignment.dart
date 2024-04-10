void main() {
  //  Function to return the sum of two numbers
  int sum(int a, int b) {
    return a + b;
  }

  // Program using a for loop to print numbers from 1 to 10
  void printNumbers() {
    for (int i = 1; i <= 10; i++) {
      print(i);
    }
  }

  // Program using a switch statement to check different string values
  void checkString(String input) {
    switch (input) {
      case 'hello':
        print('Hi there!');
        break;
      case 'bye':
        print('Goodbye!');
        break;
      default:
        print('Unknown input');
    }
  }

  // Program using a while loop to print numbers from 20 to 10
  void printDescendingNumbers() {
    int number = 20;
    while (number >= 10) {
      print(number);
      number--;
    }
  }

  // Program using an if-else statement to check if a number is even or odd
  void checkEvenOdd(int number) {
    if (number % 2 == 0) {
      print('$number is even');
    } else {
      print('$number is odd');
    }
  }

  // Program to find the largest number in a list
  int findLargest(List<int> numbers) {
    int largest = numbers[0];
    for (int number in numbers) {
      if (number > largest) {
        largest = number;
      }
    }
    return largest;
  }

  // Program using a try-catch block to catch an exception
  void catchException() {
    try {
      // Some code that may throw an exception
      throw FormatException('Example exception');
    } catch (e) {
      print('Error: $e');
    }
  }

  print('Sum of 5 and 7: ${sum(5, 7)}');
  print('\nPrinting numbers from 1 to 10:');
  printNumbers();
  print('\nChecking strings:');
  checkString('hello');
  checkString('bye');
  checkString('unknown');
  print('\nPrinting numbers from 20 to 10:');
  printDescendingNumbers();
  print('\nChecking if numbers are even or odd:');
  checkEvenOdd(6);
  checkEvenOdd(13);
  print('\nFinding the largest number in a list:');
  print(findLargest([5, 2, 8, 12, 6, 23]));
  print('\nCatching an exception:');
  catchException();
}
