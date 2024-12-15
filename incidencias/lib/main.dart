import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:incidencias/firebase_options.dart';
import 'package:incidencias/providers/incidencias_providers.dart';
import 'package:incidencias/router/app_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() async {
 WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(
   options: DefaultFirebaseOptions.currentPlatform,
 );

 runApp(const MyApp());
}

class LoadingApp extends StatelessWidget {
  const LoadingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadingScreen(),
    );
  }
}

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();

    // Retardo de 3 segundos antes de arrancar la aplicación principal
    Future.delayed(const Duration(seconds: 3)).then((_) {
      runApp(const MyApp()); // Arranca la aplicación principal
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(), // Indicador de carga
            SizedBox(height: 20),
            Text(
              'Cargando...',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(
        lazy: false,
        create: (_) => IncidenciasProviders()..getIncidencias()
        )
      ],
      child: MaterialApp.router(
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate],
        supportedLocales: const [ Locale('es')],
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: const Color.fromARGB(255, 240, 239, 239)),
        routerConfig: appRouter,
        locale: const Locale('es'),
      ),
    );
  }
}