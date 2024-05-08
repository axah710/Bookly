import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestNewsBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  //   Future<Either<Failure Class,List<TheModel>>>
}
// The code is an abstract class called HomeRepo that defines two methods:
// fetchBestSellersBooks and fetchFeaturedBooks.
// Both methods return a Future that resolves to an Either object.
//The Either object can hold either a Failure object or
//a list of BookModel objects.
// Either used to create a good error handling mechanism.

// Flow:
// The fetchBestSellersBooks method is defined with a return type
//of Future<Either<Failure, List<BookModel>>>.
//This means that when this method is called, it will return a Future
// that resolves to an Either object.
// The Either object can hold either a Failure object or a list of
// BookModel objects. This allows the method to handle
//both success and failure cases.
// The fetchFeaturedBooks method is defined in the same
//way as fetchBestSellersBooks, with the same return type.