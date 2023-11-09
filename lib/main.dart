import 'package:flutter/material.dart';
import 'package:nerds_project/auth/sign_in.dart';
import 'auth/sign_up.dart';
import 'package:nerds_project/screens/details_screen.dart';
import 'package:nerds_project/screens/loading_screen.dart';
import 'package:nerds_project/store/home_tab.dart';
import 'package:nerds_project/store/store_home.dart';

import 'auth/tabview.dart';

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
        "/signIn": (context) => const SignIn(),
        "/signUp": (context) => const SignUp(),
        "/authtabs": (context) => const Tabs(),
        "/loading": (context) => const LoadingPage(),
        "/userHome": (context) => const StoreHome(),
        "/storeTabs": (context) => const HomeTab(),
        "/details": (context) => const DetailsScreeen()
        // "model": (context) => const Model3d()
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: const LoadingPage(),
    );
  }
}
