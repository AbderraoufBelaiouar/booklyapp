import 'package:booklyapp/Features/home/data/repos/home_repos.dart';
import 'package:booklyapp/Features/search/presentation/manager/search_books_cubit/search_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.homerepo) : super(InitialState());
  final HomeRepo homerepo;
  Future<void> fetchSearchBooks({required String category}) async {
    emit(SearchBooksLoading());
    var response = await homerepo.fetchSearchedBook(bookName: category);
    response.fold((failure) {
      emit(SearchBooksFailure(failure.errMessage));
    }, (books) {
      emit(SearchBooksSuccess(books));
    });
  }
}
