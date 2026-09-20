import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:notesphere/pages/home.dart';

class AppRouter {
  static final router = GoRouter(
    navigatorKey: GlobalKey<NavigatorState>(),
    debugLogDiagnostics: false,
    initialLocation: "/",
    routes: [
      GoRoute(
        name: "home",
        path: "/",
        builder: (context, state) {
          return const HomePage();
        },
      ),
    ],
  );
}
