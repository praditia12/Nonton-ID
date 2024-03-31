import 'package:flutter/material.dart';

class MovieDetailScreen extends StatelessWidget {
  final String? movieId;
  const MovieDetailScreen({super.key, this.movieId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Movie Detail $movieId'),
      ),
    );
  }
}
