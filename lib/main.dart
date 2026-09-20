import 'package:flutter/material.dart';
import 'package:notesphere/utils/router.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Note Sphere",
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}