# Workbook 7 — Task 1

## Discipline

Software Porting

## Topic

Introduction, installation and configuration of IDE and components. Running the first project. Dart basics.

## Task

Create a new Flutter project using the command line or IDE. Configure the development environment, including Flutter SDK, Dart SDK and required dependencies. After setup, create a basic application that displays the text `Hello, Flutter!` on the screen.

## Solution

This task is implemented as a simple Flutter application.

The application displays the text:

```txt
Hello, Flutter!
```

on the main screen.

## Project structure

```txt
5/
├── README.md
├── lib/
│   └── main.dart
├── pubspec.yaml
└── other Flutter project files
```

## Source code

The main application code is located in:

```txt
lib/main.dart
```

## main.dart

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const HelloFlutterApp());
}

class HelloFlutterApp extends StatelessWidget {
  const HelloFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First Flutter Project'),
        ),
        body: const Center(
          child: Text(
            'Hello, Flutter!',
            style: TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
}
```

## How to create the project

From the `5` folder, run:

```bash
flutter create .
```

## How to run

Run the application on Windows:

```bash
flutter run -d windows
```

You can also run it on another available device:

```bash
flutter run
```

## Expected result

A Flutter application window opens and displays:

```txt
Hello, Flutter!
```

## Conclusion

The task demonstrates the creation and launch of a basic Flutter project. The application uses Dart and Flutter widgets to display text on the screen.