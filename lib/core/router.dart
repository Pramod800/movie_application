// import 'package:auto_route/auto_route.dart';
// import 'package:movie_application/core/router.gr.dart';

// @AutoRouterConfig(replaceInRouteName: 'Screen,Route')
// class AppRouter extends $AppRouter {
//   @override
//   final List<AutoRoute> routes = [
//     AutoRoute(page: MovieHomeRoute.page, path: '/'),
//     AutoRoute(page: MovieDetailRoute.page, path: '/movieDetailRoute'),
//   ];
// }

// import 'package:movie_application/features/movies/presentation/screens/movieDetailScreen.dart';
// import 'package:movie_application/features/movies/presentation/screens/moviesHomeScreen.dart';

// final GoRouter _router = GoRouter(
//   routes: <RouteBase>[
//     GoRoute(
//       path: '/',
//       builder: (BuildContext context, GoRouterState state) {
//         return const MovieHomeScreen();
//       },
//       routes: <RouteBase>[
//         GoRoute(
//           path: 'details',
//           builder: (BuildContext context, GoRouterState state) {
//             return const MovieDetailScreen(movieDetailsModel: movieDetailsModel,);
//           },
//         ),
//       ],
//     ),
//   ],
// );
