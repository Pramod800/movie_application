import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:movie_application/features/movies/presentation/blocs/movie_cubit/movie_state.dart';
import 'package:movie_application/features/movies/presentation/screens/movieDetailScreen.dart';
import 'package:movie_application/features/movies/presentation/widgets/movieDetailsScreen.dart';
import 'package:movie_application/features/movies/presentation/widgets/movie_card.dart';
import 'package:movie_application/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_application/features/movies/presentation/blocs/movie_cubit/movie_cubit.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

@RoutePage()
class MovieHomeScreen extends StatefulWidget {
  const MovieHomeScreen({Key? key}) : super(key: key);

  @override
  State<MovieHomeScreen> createState() => _MovieHomeScreenState();
}

class _MovieHomeScreenState extends State<MovieHomeScreen> {
  late MovieCubit _movieCubit;
  @override
  void initState() {
    super.initState();
    _movieCubit = getIt<MovieCubit>();

    getIt<MovieCubit>().getUpcomingMovies(
        apiUrl:
            'http://api.themoviedb.org/3/movie/upcoming?api_key=caebc202bd0a26f84f4e0d986beb15cd');
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MovieCubit, MovieState>(
      bloc: _movieCubit,
      listener: (context, state) {
        listener:
        (context, state) {
          if (state is MovieDetailsFetched) {
            final movieDetailsModel = state.movieDetailsModel;
            // Navigator.of(context).pop();
            Navigator.of(context).push(
              CupertinoPageRoute(
                builder: (context) =>
                    MovieDetailScreen(movieDetailsModel: movieDetailsModel),
              ),
            );
          }
        };
      },
      child: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(140),
            child: AppBar(
              bottom: const TabBar(
                indicatorWeight: 0.1,
                isScrollable: true,
                // indicatorPadding: EdgeInsets.zero,
                indicator: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius:
                      BorderRadius.all(Radius.circular(25.0)), // Creates border
                  color: Colors.green,
                ),
                tabs: [
                  Tab(child: Text('Populars')),
                  Tab(child: Text('Coming Soons')),
                  Tab(child: Text('Top Rated')),
                  Tab(child: Text('Top Rated')),
                ],
              ),

              // elevation: 140,
              backgroundColor: const Color.fromARGB(255, 15, 15, 15),
              title: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Watch Now', style: TextStyle(fontSize: 30)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.search_circle,
                            size: 30.0))
                  ],
                ),
              ),
              systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.black,
                statusBarIconBrightness: Brightness.dark,
                // statusBarBrightness: Brightness.light,
              ),
            ),
          ),
          body: Center(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.black87,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: BlocBuilder<MovieCubit, MovieState>(
                        bloc: getIt<MovieCubit>(),
                        builder: (context, state) {
                          if (state is MovieFetched) {
                            return MovieListWidget(
                              movieFetched: state,
                              onClick: (int movieId) {
                                _movieCubit.getMovieDetails(movieId: movieId);
                              },
                            );
                          }
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
