import 'package:flutter/material.dart';
import 'package:irdc__attend/NavigationBar/src/CompanyName.dart';
import 'package:irdc__attend/NavigationBar/src/NavBar.dart';
import 'package:irdc__attend/NavigationBar/src/NavBarItem.dart';

class navigationBar extends StatefulWidget {
  @override
  _navigationBarState createState() => _navigationBarState();
}

class _navigationBarState extends State<navigationBar> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: 100.0,
        color: Color(0xff333951),
        child: Stack(
          children: [
            CompanyName(),
            Align(
              alignment: Alignment.center,
              child: NavBar(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: NavBarItem(
                icon: Icons.logout,
                active: false,
                touched: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
