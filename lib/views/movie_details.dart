import 'package:flutter/material.dart';
import '../models/movie.dart';
import '../theme/custom_theme.dart';

class MovieDetailsPage extends StatefulWidget {
  final Movie movie;
  const MovieDetailsPage({Key? key, required this.movie}) : super(key: key);

  @override
  State<MovieDetailsPage> createState() => _MovieDetailsPageState();
}

class _MovieDetailsPageState extends State<MovieDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
        backgroundColor: const Color(CTheme.tertiaryColor),
      ),
      body: MovieDetailsCard(movie: Movie()),
    );
  }
}

class MovieDetailsCard extends StatelessWidget {
  final Movie movie;
  const MovieDetailsCard({Key? key, @required required this.movie})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 12.0, 20.0, 12.0),
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
          ),
          padding: const EdgeInsets.all(8.0),
          child: movie.id != null
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 4.0),
                    SizedBox(
                      height: 252,
                      child: movie.image != null
                          ? Image.memory(
                              movie.image!,
                              errorBuilder: (context, obj, stack) {
                                return const Center(
                                  child: Text('Error loading image'),
                                );
                              },
                            )
                          : const Center(
                              child: Text('Error loading image'),
                            ),
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      movie.title ?? '',
                      style: const TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      'Status: ${movie.details!.status!}',
                      style: const TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Released on: ${movie.releaseDate!}',
                      style: const TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Score: ${movie.voteAverage} (${movie.details!.voteCount} votes)',
                      style: const TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Duration: ${movie.details!.runtime} min',
                      style: const TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Original language: ${movie.details!.originalLang}',
                      style: const TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30.0,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: movie.genres?.length ?? 0,
                        itemBuilder: (context, index) {
                          return Text(
                            '${index == 0 ? 'Genres: ' : ''}${movie.genres?[index] ?? ''} ',
                            style: const TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                )
              : const Center(
                  child: Text("Error loading movie details"),
                ),
        ),
      ),
    );
  }
}
