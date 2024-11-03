import 'package:flutter/material.dart';
import 'package:mdrastk_my/favorite.dart';
import 'package:mdrastk_my/splash_screen.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'cairo'),
      routes: {
        "home": (context) => const HomePage(),
        "favorite": (context) => const FavoritePage(),
      },
      home: const SplashScreen(),
    );
  }
}
