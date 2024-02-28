import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:stdio93/application/router/app_routes.dart';
import 'package:stdio93/presentation/screens/error/error_screen.dart';
import 'package:stdio93/presentation/screens/home/home_screen.dart';
import 'package:stdio93/presentation/screens/splash/splash_screen.dart';

class AppRouter {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static AppRouter instance = AppRouter._();

  AppRouter._();

  GoRouter buildRouter() {
    return GoRouter(
      navigatorKey: navigatorKey,
      debugLogDiagnostics: kDebugMode,
      errorBuilder: (context, state) => const ErrorScreen(),
      initialLocation: AppRoutes.splash,
      restorationScopeId: "root",
      routes: <GoRoute>[
        GoRoute(
          path: AppRoutes.splash,
          name: "Splash",
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          path: AppRoutes.home,
          name: "Home",
          builder: (context, state) => const HomeScreen(),
        ),
      ],
    );
  }
}
