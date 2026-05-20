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