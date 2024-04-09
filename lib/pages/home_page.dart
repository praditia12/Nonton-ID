import 'package:flutter/material.dart';
import 'package:nonton_id/style/app_style.dart';

import '../components/home_app_bar_component.dart';
import '../components/movies_is_showing_component.dart';
import '../model/movie_model.dart';
import '../services/movie_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppStyle.appColors.backgroundColor,
        body: FutureBuilder<List<MovieModel>>(
          future: MovieService.getMovies(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              print('Error: ${snapshot.error}');
              return Center(
                child: Text('Ups Ada Kesalahan'),
              );
            } else {
              List<MovieModel> movies = snapshot.data!;
              return Padding(
                padding: AppStyle.appMargin.paddingScreen20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HomeAppBar(),
                    AppStyle.appMargin.spaceNormalHeight,
                    MovieIsShowing(movies: movies),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
