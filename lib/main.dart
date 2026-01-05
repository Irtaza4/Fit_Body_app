import 'package:fitness_app/utils/route_names.dart';
import 'package:fitness_app/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: _router,
    );
  }
}

final GoRouter _router = GoRouter(
  initialLocation: RouteNames.splashScreen,
    routes: [
    GoRoute(
        path: RouteNames.splashScreen,
      builder: (context,state)=> const SplashScreen()
    )
    ]);
