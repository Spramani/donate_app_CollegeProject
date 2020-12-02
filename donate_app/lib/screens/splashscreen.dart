import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  Size _size;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: _size.width,
        height: _size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).accentColor,
              Theme.of(context).primaryColor
            ],
          ),
        ),
        child: Center(
          child: Image.asset(
            'assets/images/logobig.png',
            width: _size.width / 2,
          ),
        ),
      ),
    );
  }
}
