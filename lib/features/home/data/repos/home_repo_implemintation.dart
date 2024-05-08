import 'package:dartz/dartz.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';

class HomeRepoImlemintation extends HomeRepo {
  ApiService apiService;
  HomeRepoImlemintation(
    this.apiService,
  );

  // This ApiService is used to make Dio requests to an external API.
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestNewsBooks() async {
    try {
      var data = await apiService.get(
        endPoint:
            "volumes?Filtering=free-ebooks&q=subject:programming&sorting=newest",
      );
      // it makes a call to the API using apiService.get()
      //with a specific endpoint that includes parameters to
      // filter and sort the books by programming subjects
      //and only include free ebooks.
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(
          BookModel.fromJson(item),
          // transfer item into BookModel instances and added to a list.
        );
      }
      // The response is expected to contain a list of items,
      // each representing a book. These items are then transformed
      //into BookModel instances and added to a list.
      return right(books);
    } catch (e) {
      return left(
        ServerFailure(),
      );
      // If the data fetching and processing are successful,
      // it returns the list of books wrapped in a right()
      //function (indicating success). If an error occurs,
      //it catches the exception and returns a left()
      // containing a ServerFailure object (indicating failure).
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
// / Here we will handel home repo "feature" implementation.
