import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';

abstract class SearchBooksState {}

class InitialState extends SearchBooksState {}

class SearchBooksSuccess extends SearchBooksState {
  final List<BookModel> books;
  SearchBooksSuccess(this.books);
}

class SearchBooksLoading extends SearchBooksState {}

class SearchBooksFailure extends SearchBooksState {
  String errMessage;
  SearchBooksFailure(this.errMessage);
}
