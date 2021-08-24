import 'package:api_calling/meta/Movie/movie_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Movie APi',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MoviePage(),
    );
  }
}
