import 'package:go_router/go_router.dart';
import 'package:todo_app_v2/features/presentation/view/todo_list.dart';

import 'view/home.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Home(),
      redirect: (context, state) => '/doto-list',
      routes: [
        GoRoute(
          path: 'doto-list',
          builder: (context, state) => const TododsList(),
        )
      ],
    ),

    // GoRoute(
    //   path: '/edit/:id',
    //   pageBuilder: (context, state) => const AddEditPage(),
    // ),
    // GoRoute(
    //   path: '/settings',
    //   pageBuilder: (context, state) => const SettingsPage(),
    // ),
    // GoRoute(
    //   path: '/about',
    //   pageBuilder: (context, state) => const AboutPage(),
    // ),
    // GoRoute(
    //   path: '/:404',
    //   pageBuilder: (context, state) => const NotFoundPage(),
    // ),
  ],
);
