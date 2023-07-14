import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:david_hyll/core/utils/dependency_injection.config.dart';

final getIt = GetIt.instance;


@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencyInjection() {
  $initGetIt(getIt);
  getIt.registerLazySingleton(() => Dio());

}
