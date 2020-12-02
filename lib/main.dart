import 'package:donate_app/screens/bedonor.dart';
import 'package:donate_app/screens/homeScreen.dart';
import 'package:donate_app/screens/needplasma.dart';
import 'package:donate_app/screens/profilescreen.dart';

import 'package:donate_app/screens/verificationScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './screens/loginScreen.dart';

void main() {
  runApp(DonateApp());
}

class DonateApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFD03A3A),
        accentColor: Color(0xFFFFA4A4),
        cardColor: Color(0xFFFFEBEB),
        buttonColor: Color(0xFFFF6E6E),
        splashColor: Color(0xFFFFEBEB),
        hintColor: Color(0xFF7F7F7F),
      ),
      home: LoginScreen(),
      initialRoute: '/',
      routes: {
        VerifyScreen.routeName: (ctx) => VerifyScreen(),
        ProfileScreen.routeName: (ctx) => ProfileScreen(),
        HomeScreen.routeName: (ctx) => HomeScreen(),
        BeADonor.routeName: (ctx) => BeADonor(),
        NeedPlasma.routeName: (ctx) => NeedPlasma(),
      },
    );
  }
}
