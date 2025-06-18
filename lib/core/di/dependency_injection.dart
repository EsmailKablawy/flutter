import 'package:dio/dio.dart';
import 'package:event/features/forget_password/cubit/forget_password_cubit.dart';
import 'package:event/features/forget_password/data/repo/forget_password_repo.dart';

import 'package:get_it/get_it.dart';

import '../../features/login/cubit/login_cubit.dart';
import '../../features/login/data/repos/login_repo.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // MARK: - Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  // MARK: -main
  // getIt.registerLazySingleton<MainRepo>(() => MainRepo(getIt()));
  // getIt.registerFactory<MainCubit>(() => MainCubit(getIt()));

  // MARK: -login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  // MARK: -ForgetPassword
  getIt.registerLazySingleton<ForgetPasswordRepo>(
      () => ForgetPasswordRepo(getIt()));
  getIt
      .registerFactory<ForgetPasswordCubit>(() => ForgetPasswordCubit(getIt()));
}
