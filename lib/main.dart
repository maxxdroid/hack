import 'package:flutter/material.dart';
import 'package:nerds_project/auth/sign_in.dart';
import 'package:nerds_project/screens/details_screen.dart';
import 'package:nerds_project/screens/loading_screen.dart';
import 'package:nerds_project/store/home_tab.dart';
import 'package:nerds_project/store/store_home.dart';

import 'screens/tabview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nerds',
      routes: {
        "signIn": (context) => const SignIn(),
        "tabs": (context) => const Tabs(),
        "loading": (context) => const LoadingPage(),
        "user home": (context) => const StoreHome(),
        "store tabs": (context) => const HomeTab(),
        "details": (context) => const DetailsScreeen()
        // "model": (context) => const Model3d()
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: const LoadingPage(),
    );
  }
}
