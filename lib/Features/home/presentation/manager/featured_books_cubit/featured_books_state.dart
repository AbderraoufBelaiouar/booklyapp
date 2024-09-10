import 'package:booklyapp/Features/home/data/models/book/book.dart';

abstract class FeaturedBooksState {}

class InitialState extends FeaturedBooksState {}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<Book> books;
  FeaturedBooksSuccess(this.books);
}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksFailure extends FeaturedBooksState {
  String errMessage;
  FeaturedBooksFailure(this.errMessage);
}
