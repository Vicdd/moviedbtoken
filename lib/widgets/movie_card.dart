import 'package:flutter/material.dart';
import '../models/movie.dart';
import '../views/movie_details.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  const MovieCard({Key? key, @required required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MovieDetailsPage(movie: movie),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 252,
              child: movie.image != null
                  ? Image.memory(movie.image!)
                  : const Center(
                      child: Text('Error loading image'),
                    ),
            ),
            const SizedBox(height: 4.0),
            Text(
              movie.title ?? '',
              style:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
