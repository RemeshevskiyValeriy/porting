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