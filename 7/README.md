# Workbook 8 — Task 1

## Discipline

Software Porting

## Topic

Dart language. Object-oriented programming. Collections.

## Task

Implement a `Book` class using object-oriented programming.

The class must represent a book and contain the following properties:

- `title`;
- `author`;
- `year`;
- `pages`.

The class must also contain methods:

- `displayInfo()` — displays information about the book;
- `isClassic()` — returns `true` if the book was published before 1900, otherwise returns `false`.

## Solution

This task is implemented as a Dart console application.

The program creates two objects of the `Book` class and displays information about each book.

## Project structure

```txt
7/
├── README.md
└── main.dart
```

## Source code

```dart
class Book {
  String title;
  String author;
  int year;
  int pages;

  Book(this.title, this.author, this.year, this.pages);

  void displayInfo() {
    print('Title: $title');
    print('Author: $author');
    print('Year: $year');
    print('Pages: $pages');
    print('Classic: ${isClassic() ? "Yes" : "No"}');
    print('-------------------------');
  }

  bool isClassic() {
    return year < 1900;
  }
}

void main() {
  final Book firstBook = Book('War and Peace', 'Leo Tolstoy', 1869, 1225);
  final Book secondBook = Book('The Hobbit', 'J. R. R. Tolkien', 1937, 310);

  firstBook.displayInfo();
  secondBook.displayInfo();
}
```

## How to run

From the `7` folder, run:

```bash
dart run main.dart
```

## Expected output

```txt
Title: War and Peace
Author: Leo Tolstoy
Year: 1869
Pages: 1225
Classic: Yes
-------------------------
Title: The Hobbit
Author: J. R. R. Tolkien
Year: 1937
Pages: 310
Classic: No
-------------------------
```

## Conclusion

The task demonstrates object-oriented programming in Dart. The program defines a class, creates objects and uses methods to display information and check whether a book is classic.
