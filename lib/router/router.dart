import 'package:go_router/go_router.dart';
import 'package:nonton_id/screens/home_screen.dart';
import 'package:nonton_id/screens/login_screen.dart';
import 'package:nonton_id/screens/register_screen.dart';
import 'package:nonton_id/screens/splash_screen.dart';

class RoutePaths {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/';
}

GoRouter router = GoRouter(
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
      // TODO MOVIE LIST
      // TODO MOVIE DETAIL
    ),
  ],
);
