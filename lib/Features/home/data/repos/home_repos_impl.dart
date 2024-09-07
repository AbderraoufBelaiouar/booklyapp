import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/data/repos/home_repos.dart';
import 'package:booklyapp/core/errors/failures.dart';
import 'package:booklyapp/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeReposImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {}

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {}
}
