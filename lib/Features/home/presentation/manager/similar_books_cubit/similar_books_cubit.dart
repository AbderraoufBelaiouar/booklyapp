import 'package:booklyapp/Features/home/data/repos/home_repos.dart';
import 'package:booklyapp/Features/home/presentation/manager/similar_books_cubit/similar_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homerepo) : super(InitialState());
  final HomeRepo homerepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var response = await homerepo.fetchSimilarBooks(category: category);
    response.fold((failure) {
      emit(SimilarBooksFailure(failure.errMessage));
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}
