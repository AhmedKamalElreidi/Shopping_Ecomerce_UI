import 'package:flutter/material.dart';
import 'package:shopping_ecomerce/feature/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'shopping',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const SplashView(),
    );
  }
}
