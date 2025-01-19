import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:my_bookly/features/hom_featuer/data_layer/repo/hom_repo_impementation.dart';

import 'api_serveses.dart';

final getIt = GetIt.instance;

void setupLocatedServicesPacge() {
  getIt.registerSingleton<ApiServeses>(ApiServeses(dio: Dio()));

  getIt.registerSingleton<HomRepoImpementation>(
      HomRepoImpementation(apiServeses: getIt.get<ApiServeses>()));

  getIt.registerSingleton<AuthTestGet>(AuthTestGet(getIt.get<ApiServeses>()));
}

class AuthTestGet {
  final ApiServeses apiServeses;
  const AuthTestGet(this.apiServeses);
}
