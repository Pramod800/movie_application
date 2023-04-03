import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_application/features/movies/data/models/popularMovies.dart';
import 'package:movie_application/features/movies/presentation/blocs/movie_search_cubit/movie_search_cubit_cubit.dart';
import 'package:movie_application/main.dart';

class MovieSearchScreen extends StatefulWidget {
  const MovieSearchScreen({Key? key}) : super(key: key);

  @override
  State<MovieSearchScreen> createState() => _MovieSearchScreenState();
}

class _MovieSearchScreenState extends State<MovieSearchScreen> {
  late TextEditingController _textEditingController;
  late MovieSearchCubit _movieSearchCubit;

  @override
  void initState() {
    
    super.initState();
    _textEditingController=TextEditingController();
    _movieSearchCubit = getIt<MovieSearchCubit>();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: TextFormField(
          controller: _textEditingController,
          autocorrect: false,
          decoration: const InputDecoration(hintText: 'Search Movie'),
          onFieldSubmitted: (userInput) {
            _movieSearchCubit.searchMovie(queryFromUi: userInput);
          },
        ),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Search Movies",
                        style: TextStyle(fontSize: 25, color: Colors.white)),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    "Search Movies",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                    textAlign: TextAlign.start,
                  ),
                  BlocBuilder<MovieSearchCubit, MovieSearchState>(
                      bloc: _movieSearchCubit,
                      builder: (context, state) {
                        if (state is MovieFetching) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (state is SearchedMovieFetched) {
                          final SearchedMovieModel searchedMovie =
                              state.searchedMovieModel;

                          return Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListView.builder(
                                  itemCount: searchedMovie.results.length,
                                  itemBuilder: (context, index) {
                                    final singleMovie =
                                        searchedMovie.results[index];

                                    return Column(
                                      children: [
                                        Text(singleMovie.title),
                                        Text(singleMovie.originalLanguage),
                                        Text(singleMovie.overview),
                                      ],
                                    );
                                  }),
                            ),
                          );
                        } else if (state is SearchedError) {
                          return Center(
                            child: Text(state.errorMessage),
                          );
                        }
                        return const Center(
                          child: Text('You have not searched any movies yet'),
                        );
                      })
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
