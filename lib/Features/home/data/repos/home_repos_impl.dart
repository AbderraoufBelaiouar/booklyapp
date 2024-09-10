
import 'package:booklyapp/Features/home/data/models/book/book.dart';
import 'package:booklyapp/Features/home/data/repos/home_repos.dart';
import 'package:booklyapp/core/errors/failures.dart';
import 'package:booklyapp/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeReposImpl implements HomeRepo {
  final ApiService apiService;
  HomeReposImpl(this.apiService);
  @override
  Future<Either<Failure, List<Book>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:programming&sorting=newest');

      List<Book> booksList = [];
      for (var item in data['item']) {
        booksList.add(Book.fromJson(item));
      }
      return right(booksList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');

      List<Book> booksList = [];
      for (var item in data['items']) {
        booksList.add(Book.fromMap(item));
      }
      return right(booksList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
