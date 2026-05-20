# Workbook 7 — Task 2

## Discipline

Software Porting

## Topic

Dart basics.

## Task

Write a Dart program that implements a simple calculator with basic operations:

- addition;
- subtraction;
- multiplication;
- division.

The program must ask the user to enter two numbers and choose an operation.

## Solution

This task is implemented as a console Dart application.

The program reads two numbers from the console, asks the user to select an arithmetic operation and then prints the result.

## Project structure

```txt
6/
├── README.md
└── main.dart
```

## Source code

```dart
import 'dart:io';

void main() {
  stdout.write('Enter first number: ');
  final double firstNumber = double.parse(stdin.readLineSync()!);

  stdout.write('Enter second number: ');
  final double secondNumber = double.parse(stdin.readLineSync()!);

  stdout.write('Choose operation (+, -, *, /): ');
  final String operation = stdin.readLineSync()!;

  double result;

  switch (operation) {
    case '+':
      result = firstNumber + secondNumber;
      break;
    case '-':
      result = firstNumber - secondNumber;
      break;
    case '*':
      result = firstNumber * secondNumber;
      break;
    case '/':
      if (secondNumber == 0) {
        print('Error: division by zero is not allowed.');
        return;
      }
      result = firstNumber / secondNumber;
      break;
    default:
      print('Error: unknown operation.');
      return;
  }

  print('Result: $result');
}
```

## How to run

From the `6` folder, run:

```bash
dart run main.dart
```

## Example

Input:

```txt
Enter first number: 10
Enter second number: 5
Choose operation (+, -, *, /): *
```

Output:

```txt
Result: 50.0
```

## Conclusion

The task demonstrates basic Dart syntax, console input and output, conditional logic and arithmetic operations.
