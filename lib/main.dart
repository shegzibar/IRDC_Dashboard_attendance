import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:irdc__attend/Pages/home.dart';
import 'package:irdc__attend/Pages/list.dart';
import 'package:irdc__attend/Pages/test.dart';

import 'NavigationBar/NavigationBar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    //key for making the webapp in flutter
    // Replace with actual values
    // ignore: prefer_const_constructors
    options: FirebaseOptions(
      apiKey: "AIzaSyB57R-9qKuY8AcqopGmzQkKnVTRySdKu7k",
      appId: "1:65484946967:web:0b1bced6cd486e4a3f2652",
      messagingSenderId: "65484946967",
      projectId: "irdc-attendance-203df",
    ),
  );

  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            // ignore: missing_required_param
            navigationBar(),
            Home(),
          ],
        ),
      ),
    );
  }
}
