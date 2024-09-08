import 'package:booklyapp/Features/home/data/repos/home_repos.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:booklyapp/Features/home/presentation/manager/newest_books_cubit/newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homerepo) : super(InitialState());
  final HomeRepo homerepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var response = await homerepo.fetchNewestBooks();
    response.fold((failure) {
      emit(NewestBooksFailure(failure.errMessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
