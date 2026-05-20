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