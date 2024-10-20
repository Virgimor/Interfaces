import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_app/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      name: HomeScreen.name,
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      name: CardsScreen.name,
      path: '/cards',
      builder: (BuildContext context, GoRouterState state) {
        return const CardsScreen();
      },
    ),
    GoRoute(
      name: ButtonsScreen.name,
      path: '/buttons',
      builder: (BuildContext context, GoRouterState state) {
        return const ButtonsScreen();
      },
    ),
    GoRoute(
      name: ProgressScreen.name,
      path: '/progress',
      builder: (BuildContext context, GoRouterState state) {
        return const ProgressScreen();
      },
    ),
    GoRoute(
      path: '/snackbars',
      name: SnackbarScreen.name,
      builder: (context, state) => const SnackbarScreen(),
    ),
  ],
);