import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login/screens/home_screen.dart';
import 'package:login/screens/login_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: <RouteBase> [
    GoRoute(
      name: HomeScreen.name,
      path: '/',
      builder: (BuildContext context, GoRouterState state){
        return const HomeScreen();
      },
    ),
    GoRoute(
      name: LoginScreen.name,
      path: '/login',
      builder: (BuildContext context, GoRouterState state){
        return const LoginScreen(usuario: '',);
      },
    ),
  ],
);