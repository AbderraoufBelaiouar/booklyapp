import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';

abstract class FeaturedBooksState {}

class InitialState extends FeaturedBooksState {}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;
  FeaturedBooksSuccess(this.books);
}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksFailure extends FeaturedBooksState {
  String errMessage;
  FeaturedBooksFailure(this.errMessage);
}
