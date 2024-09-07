import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/data/repos/home_repos.dart';
import 'package:booklyapp/core/errors/failures.dart';
import 'package:booklyapp/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeReposImpl implements HomeRepo {
  final ApiService apiService;
  HomeReposImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=programming&sorting=newest');

      List<BookModel> booksList = [];
      for (var item in data['item']) {
        booksList.add(BookModel.fromJson(item));
      }
      return right(booksList);
    } on Exception catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    apiService.get(endPoint: endPoint);
  }
}
