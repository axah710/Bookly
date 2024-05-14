part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();
// FeaturedBooksState:
// This is a sealed class that serves as a base class for all the states
// related to the featured books feature.
// It extends Equatable, which is a package in Dart that helps in overriding
// the == operator and hashCode method to facilitate state comparison.
// The props getter returns an empty list, which is used by Equatable
//to determine equality between instances.
  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}
// FeaturedBooksInitial:
// This class represents the initial state of the featured books feature.
//It extends FeaturedBooksState and doesn't add any additional properties
//or methods. This state could be used to indicate that the feature
// has not started any operations yet.

final class FeaturedBooksLoading extends FeaturedBooksState {}
// FeaturedBooksLoading:
// This class represents the loading state of the featured books feature.
// It extends FeaturedBooksState and signifies that the application is
// currently fetching or processing the featured books data.

final class FeaturedBooksSucess extends FeaturedBooksState {
  final List<BookModel> books;

  const FeaturedBooksSucess({required this.books});
}
// FeaturedBooksSuccess:
// This class represents a successful state where the featured books have
// been successfully fetched and are available.
// It contains a property books, which is a list of BookModel. This list
//holds the data for the books that are featured.
// The constructor is marked with const and uses required for the books
//parameter, ensuring that it must be provided when an instance is created.

final class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMessage;

  const FeaturedBooksFailure({required this.errMessage});
}
// FeaturedBooksFailure:
// This class represents a failure state in fetching the featured books.
// It includes a property errMessage, which is a string that holds the error
// message describing what went wrong during the operation.
// Similar to FeaturedBooksSuccess, its constructor is const with a
// required parameter for errMessage.
