import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  final HomeRepo homeRepo;
  SimilarBooksCubit(
    this.homeRepo,
  ) : super(
          SimilarBooksInitial(),
        );
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(
      category: category,
    );
    result.fold((failure) {
      emit(
        SimilarBooksFailure(failure.errMessage),
      );
    }, (books) {
      emit(
        SimilarBooksSucess(books),
      );
    });
  }
}
