import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:incidencias/auth_gate.dart';
import 'package:incidencias/screens/home_incidencias.dart';


final appRouter = GoRouter(
    initialLocation: '/',
    routes: <RouteBase>[
        GoRoute(
            path: '/',
            name: AuthGate.name,
            builder: (BuildContext context, GoRouterState state){
                return const AuthGate();
            }
        ),
        GoRoute(
            path: '/home_incidencias',
            name: HomeIncidencias.name,
            builder: (BuildContext context, GoRouterState state){
                return const HomeIncidencias();
            }
        ),
    ]
);