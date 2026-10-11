// 2. Ստեղծել Book դաս՝ հետեւյալ դաշտերով.
// ● title: գրքի անվանումը
// ● author: հեղինակը
// ● pages: էջերի քանակը
// Ստեղծել մեթոդ String getInfo(), որը վերադարձնում է գրքի մասին տեղեկությունը
// հետեւյալ ձեւաչափով.
// "Title by Author, Pages pages"

class Book {
  String title;
  String author;
  int pages;

  Book(this.title, this.author, this.pages);
  String getInfo() {
    return "$title by $author, $pages pages";
  }
}
void main() {
  Book book = Book("Misery", "Stephen King", 340);
  print(book.getInfo());
}
