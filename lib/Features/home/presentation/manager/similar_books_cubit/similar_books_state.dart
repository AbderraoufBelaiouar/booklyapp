import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';

abstract class SimilarBooksState {}

class InitialState extends SimilarBooksState {}

class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> books;
  SimilarBooksSuccess(this.books);
}

class SimilarBooksLoading extends SimilarBooksState {}

class SimilarBooksFailure extends SimilarBooksState {
  String errMessage;
  SimilarBooksFailure(this.errMessage);
}
