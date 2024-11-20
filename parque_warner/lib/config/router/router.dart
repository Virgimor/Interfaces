import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:parque_warner/screens/login_screen.dart';
import 'package:parque_warner/screens/warner_beach_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes:<RouteBase> [
    GoRoute(
      path: '/',
      name: LoginScreen.name,
      builder: (BuildContext context, GoRouterState state){
        return const LoginScreen();
      }
    ),
    GoRoute(
      path: '/warner_beach_screen',
      name: WarnerBeachScreen.name,
      builder: (BuildContext context, GoRouterState state){
        return const WarnerBeachScreen();
      }
    ),
  ]
);