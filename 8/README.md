# Workbook 8 — Task 3

## Discipline

Software Porting

## Topic

Dart language. Object-oriented programming. Collections.

## Task

Create a `Library` class that represents a library of books.

The library must store a list of books using the `Book` class from the first task.

The `Library` class must contain the following methods:

- `addBook(Book book)` — adds a book to the library;
- `removeBook(String title)` — removes a book from the library by title;
- `findBookByAuthor(String author)` — returns a list of books by the specified author;
- `displayAllBooks()` — displays information about all books in the library.

## Solution

This task is implemented as a Dart console application.

The program uses two classes:

- `Book`;
- `Library`.

The `Library` class stores a collection of `Book` objects and provides methods for adding, removing, searching and displaying books.

## Project structure

```txt
8/
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

class Library {
  final List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print('Book added: ${book.title}');
  }

  void removeBook(String title) {
    final int initialLength = books.length;

    books.removeWhere((book) => book.title == title);

    if (books.length < initialLength) {
      print('Book removed: $title');
    } else {
      print('Book not found: $title');
    }
  }

  List<Book> findBookByAuthor(String author) {
    return books.where((book) => book.author == author).toList();
  }

  void displayAllBooks() {
    if (books.isEmpty) {
      print('Library is empty.');
      return;
    }

    for (final Book book in books) {
      book.displayInfo();
    }
  }
}

void main() {
  final Library library = Library();

  library.addBook(Book('War and Peace', 'Leo Tolstoy', 1869, 1225));
  library.addBook(Book('Anna Karenina', 'Leo Tolstoy', 1877, 864));
  library.addBook(Book('The Hobbit', 'J. R. R. Tolkien', 1937, 310));

  print('\nAll books in library:');
  library.displayAllBooks();

  print('Books by Leo Tolstoy:');
  final List<Book> tolstoyBooks = library.findBookByAuthor('Leo Tolstoy');

  for (final Book book in tolstoyBooks) {
    book.displayInfo();
  }

  library.removeBook('The Hobbit');

  print('\nBooks after removing:');
  library.displayAllBooks();
}
```

## How to run

From the `8` folder, run:

```bash
dart run main.dart
```

## Expected output

```txt
Book added: War and Peace
Book added: Anna Karenina
Book added: The Hobbit

All books in library:
Title: War and Peace
Author: Leo Tolstoy
Year: 1869
Pages: 1225
Classic: Yes
-------------------------
Title: Anna Karenina
Author: Leo Tolstoy
Year: 1877
Pages: 864
Classic: Yes
-------------------------
Title: The Hobbit
Author: J. R. R. Tolkien
Year: 1937
Pages: 310
Classic: No
-------------------------
Books by Leo Tolstoy:
Title: War and Peace
Author: Leo Tolstoy
Year: 1869
Pages: 1225
Classic: Yes
-------------------------
Title: Anna Karenina
Author: Leo Tolstoy
Year: 1877
Pages: 864
Classic: Yes
-------------------------
Book removed: The Hobbit

Books after removing:
Title: War and Peace
Author: Leo Tolstoy
Year: 1869
Pages: 1225
Classic: Yes
-------------------------
Title: Anna Karenina
Author: Leo Tolstoy
Year: 1877
Pages: 864
Classic: Yes
-------------------------
```

## Conclusion

The task demonstrates the use of object-oriented programming and collections in Dart. The program creates a library of books, adds books to a list, searches books by author, removes a book by title and displays all stored books.