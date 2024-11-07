import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:incidencias/screens/home_incidencias.dart';


final appRouter = GoRouter(
    initialLocation: '/',
    routes: <RouteBase>[
        GoRoute(
            path: '/',
            name: HomeIncidencias.name,
            builder: (BuildContext context, GoRouterState state){
                return const HomeIncidencias();
            }
        ),
        
    ]
);