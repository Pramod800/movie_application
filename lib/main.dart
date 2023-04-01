import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
// import 'package:movie_application/core/router.dart';
import 'package:movie_application/features/movies/presentation/blocs/movie_cubit/movie_cubit.dart';
import 'package:movie_application/features/movies/presentation/blocs/movie_details_cubit/movie_details_cubit.dart';
import 'package:movie_application/features/movies/presentation/screens/moviesHomeScreen.dart';

GetIt getIt = GetIt.instance;
void main() {
  getIt.registerLazySingleton<MovieCubit>(() => MovieCubit());
  getIt.registerLazySingleton<Dio>(() => Dio());
  // getIt.registerLazySingleton<AppRouter>(() => AppRouter());
  getIt.registerLazySingleton<MovieDetailsCubit>(() => MovieDetailsCubit());

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
