import 'package:flutter/material.dart';
import 'package:moviedbtoken/theme/custom_theme.dart';
import 'package:moviedbtoken/views/movie_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(CTheme.primaryColor),
        scaffoldBackgroundColor: const Color(CTheme.primaryColor),
      ),
      home: const MovieListPage(),
    );
  }
}
