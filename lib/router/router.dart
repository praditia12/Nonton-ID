import 'package:go_router/go_router.dart';
import 'package:nonton_id/screens/home_screen.dart';
import 'package:nonton_id/screens/login_screen.dart';
import 'package:nonton_id/screens/register_screen.dart';
import 'package:nonton_id/screens/splash_screen.dart';

import '../screens/movie_detail_screen.dart';
import '../screens/movie_list_screen.dart';

class RoutePaths {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/';
  static const String movie = 'movies';
  static const String movieDetail = 'movie/:id';
}

GoRouter router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: RoutePaths.splash,
  routes: [
    GoRoute(
      path: RoutePaths.splash,
      builder: (context, state) => SpalshScreen(),
    ),
    GoRoute(
      path: RoutePaths.login,
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: RoutePaths.register,
      builder: (context, state) => RegisterScreen(),
    ),
    GoRoute(
      path: RoutePaths.home,
      builder: (context, state) => HomeScreen(),
      routes: [
        GoRoute(
          path: RoutePaths.movie,
          builder: (context, state) => MovieListScreen(),
        ),
        GoRoute(
          path: RoutePaths.movieDetail,
          builder: (context, state) {
            final id = state.pathParameters['id'];
            return MovieDetailScreen(movieId: id);
          },
        ),
      ],
    ),
  ],
);
