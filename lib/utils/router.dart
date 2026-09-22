import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:notesphere/pages/home.dart';
import 'package:notesphere/pages/notes_page.dart';
import 'package:notesphere/pages/todo_page.dart';

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
      GoRoute(
        name: "notes",
        path: "/notes",
        builder: (context, state) {
          return const NotePage();
        },
      ),
      GoRoute(
        name: "todo",
        path: "/todo",
        builder: (context, state) {
          return const ToDoPage();
        },
      ),
    ],
  );
}
