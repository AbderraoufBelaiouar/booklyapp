import 'package:booklyapp/Features/home/data/models/book/book.dart';

abstract class NewestBooksState {}

class InitialState extends NewestBooksState {}

class NewestBooksSuccess extends NewestBooksState {
  final List<Book> books;
  NewestBooksSuccess(this.books);
}

class NewestBooksLoading extends NewestBooksState {}

class NewestBooksFailure extends NewestBooksState {
  String errMessage;
  NewestBooksFailure(this.errMessage);
}
