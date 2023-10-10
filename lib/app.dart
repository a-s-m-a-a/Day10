

import 'package:day_10/home.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'package:go_router/go_router.dart';
class ShrineApp extends StatelessWidget {
  final _router = GoRouter(
    routes: [

      GoRoute(
        path: '/',
        builder: (context, state) => LoginPage(title: 'Log In'),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => HomePage(),
      ),

    ],
  );

  ShrineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      title: 'Shrine',
      theme: ThemeData.light(useMaterial3: true),
    );
  }
}
