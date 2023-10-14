import 'package:flutter/material.dart';

import 'router.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const color = Colors.green;
    return MaterialApp.router(
      title: 'Clean Architecture',
      debugShowCheckedModeBanner: false,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      theme: ThemeData.light(useMaterial3: true).copyWith(
          colorScheme: ColorScheme.fromSeed(
              seedColor: color, brightness: Brightness.light)),
      darkTheme: ThemeData.dark(useMaterial3: true).copyWith(
          colorScheme: ColorScheme.fromSeed(
              seedColor: color, brightness: Brightness.dark)),
      themeMode: ThemeMode.system,
    );
  }
}
