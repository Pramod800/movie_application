import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movie_application/core/utils/hive_storage.dart';
import 'package:movie_application/features/movies/data/data_source/movie_data_source.dart';
import 'package:movie_application/features/movies/data/repository/movie_repository.dart';
// import 'package:movie_application/core/router.dart';
import 'package:movie_application/features/movies/presentation/blocs/movie_cubit/movie_cubit.dart';
import 'package:movie_application/features/movies/presentation/blocs/movie_details_cubit/movie_details_cubit.dart';
import 'package:movie_application/features/movies/presentation/blocs/movie_search_cubit/movie_search_cubit_cubit.dart';
import 'package:movie_application/features/movies/presentation/screens/moviesHomeScreen.dart';
import 'package:hive/hive.dart';

GetIt getIt = GetIt.instance;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(MovieCardAdapter());
  await Hive.openBox('movieDB');
  getIt.registerLazySingleton<HiveUtils>(() => HiveUtils());
  getIt.registerLazySingleton<MovieCubit>(() => MovieCubit());
  getIt.registerLazySingleton<MovieSearchCubit>(() => MovieSearchCubit());
  getIt.registerLazySingleton<Dio>(() => Dio());
  // getIt.registerLazySingleton<AppRouter>(() => AppRouter());
  getIt.registerLazySingleton<MovieDetailsCubit>(() => MovieDetailsCubit());
  getIt.registerLazySingleton<MovieRepository>(
      () => MovieRepository(MovieDataSource()));

  await getIt<HiveUtils>().initDb();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // final AppRouter _appRouter = getIt<AppRouter>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // routerConfig:_appRouter.config(),

      home: MovieHomeScreen(),
      // routerDelegate: _appRouter.delegate(),
      // routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
