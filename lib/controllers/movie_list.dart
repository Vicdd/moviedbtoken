import 'package:flutter/cupertino.dart';

import '../models/movie.dart';

class MovieListController with ChangeNotifier {
  List<Movie> movies = [];
}
