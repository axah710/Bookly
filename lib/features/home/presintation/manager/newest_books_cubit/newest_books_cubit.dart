// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  final HomeRepo homeRepo;
  NewestBooksCubit(
    this.homeRepo,
  ) : super(
          NewestBooksLoading(),
        );
  Future<void> fetchNewsetBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewstBooks();
    result.fold((failure) {
      emit(
        NewestBooksFailure(failure.errMessage),
      );
    }, (books) {
      emit(
        NewestBooksSucess(books),
      );
    });
  }
}
