import 'package:flutter/material.dart';
import '../models/movie.dart';
import '../theme/custom_theme.dart';
import '../widgets/movie_card.dart';

class MovieListPage extends StatefulWidget {
  const MovieListPage({Key? key}) : super(key: key);

  @override
  State<MovieListPage> createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
        backgroundColor: const Color(CTheme.tertiaryColor),
      ),
      body: ListView.separated(
        itemBuilder: (_, index) => MovieCard(movie: Movie(title: 'Teste')),
        separatorBuilder: (_, index) => const Divider(height: 8.0),
        itemCount: 2,
        padding: const EdgeInsets.fromLTRB(40.0, 12.0, 40.0, 12.0),
        shrinkWrap: true,
      ),
    );
  }
}
