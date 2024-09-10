import 'package:booklyapp/Features/home/data/models/book/book.dart';
import 'package:booklyapp/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Book>>> fetchNewestBooks();

  Future<Either<Failure, List<Book>>> fetchFeaturedBooks();
}
