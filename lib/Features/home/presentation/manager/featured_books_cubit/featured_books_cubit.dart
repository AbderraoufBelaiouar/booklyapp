import 'package:booklyapp/Features/home/data/repos/home_repos.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:booklyapp/Features/home/presentation/manager/featured_books_cubit/featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homerepo) : super(InitialState());
  final HomeRepo homerepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var response = await homerepo.fetchFeaturedBooks();
    response.fold((failure) {
      emit(FeaturedBooksFailure(failure.errMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
