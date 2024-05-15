// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(
    this.homeRepo,
  ) : super(
          FeaturedBooksInitial(),
        );
  final HomeRepo homeRepo;
  // homeRepo is used as a repository layer in the architecture of
  //the application. This repository, HomeRepo, likely abstracts the
  // data fetching mechanisms and provides a clean API for the
  //FeaturedBooksCubit to interact with the data source, which in this case
  // involves fetching featured books. Using such a repository pattern helps
  // in decoupling the data source from the business logic, making the code
  // more modular, easier to manage, and test.
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(
        FeaturedBooksFailure(failure.errMessage),
      );
    }, (books) {
      emit(
        FeaturedBooksSucess(books),
      );
    });
    // The fold method is used here as part of handling the result of
    //homeRepo.fetchFeaturedBooks(). This result is presumably a Either
    //type from functional programming, commonly used in Dart with packages
    //like dartz. The Either type is used to represent a value that can be
    //one of two types: typically a success type or a failure type.
  }
}
// we here just do some UI handling not work with data ...