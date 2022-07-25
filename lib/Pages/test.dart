import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:irdc__attend/NavigationBar/NavigationBar.dart';
import 'package:irdc__attend/Pages/home.dart';
import 'package:irdc__attend/Pages/list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const breakpoint = 600.0;
    return Scaffold(
      body: Row(
        children: [
          navigationBar(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 50,
                top: 40,
              ),
              child: Column(
                children: [
                  Text(
                    "Attendance list",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff333951)),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Expanded(child: List()),
                ],
              ),
            ),
          ),
          // Expanded(
          //   child: Container(
          //     width: MediaQuery.of(context).size.width,
          //     height: MediaQuery.of(context).size.height,
          //   ),
          // )
        ],
      ),
    );
  }
}
