import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implemintation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
//There is also a shortcut for creating a singleton instance of a class:
// GetIt getIt = GetIt.I;

// GetIt Instance:
// final getIt = GetIt.instance;: This line creates a singleton instance of
//GetIt, which is used to register and retrieve dependencies
//throughout the application.

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImlemintation>(
    HomeRepoImlemintation(
      getIt.get<ApiService>(),
      // Recalling the ApiService singleton.
    ),
  );
}

// This function configures the dependencies:
// getIt.registerSingleton<ApiService>(ApiService(Dio()),);:
// Registers an ApiService singleton that is initialized with a Dio client.
//This means that wherever ApiService is needed, this same instance will
//be provided.
// getIt.registerSingleton<HomeRepoImlemintation>
//(HomeRepoImlemintation(getIt.get<ApiService>()),);:
//Registers a HomeRepoImlemintation singleton. It retrieves the previously
//registered ApiService singleton from GetIt and uses it as a dependency.

// This setup ensures that the same instance of ApiService and
//HomeRepoImlemintation is used throughout the application, promoting a
//clean and manageable codebase by centralizing the management of dependencies.

// Increase the readability and maintainability of the codebase.
// Increase the testability of the codebase .
// Decrease the Coupling between the ApiService and HomeRepo .