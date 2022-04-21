// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:newsapp/views/home.dart';
import 'package:newsapp/views/login.dart';

// void main() => runApp(const MyApp());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "7e0e739ad7c64866bb44b79fb87ebdb3r",
          appId: "",
          messagingSenderId: "",
          projectId: ""));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hindustan Times',
      theme: ThemeData(primaryColor: Colors.white),
      // home: const LoginPage(),
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
