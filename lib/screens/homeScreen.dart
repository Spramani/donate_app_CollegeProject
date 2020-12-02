import 'dart:ui';

import 'package:donate_app/screens/bedonor.dart';
import 'package:donate_app/screens/needplasma.dart';
import 'package:flutter/material.dart';

import 'sidebar.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/Home-screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Size _size;
  bool isPressed1 = false;
  bool isPressed2 = false;

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).splashColor,
      key: _scaffoldKey,
      drawer: MyDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            },
            icon: Image.asset(
              'assets/images/menu.png',
              width: 25,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Image.asset(
                'assets/images/notification.png',
              ),
            ),
          ],
        ),
      ),
      body: Container(
        width: _size.width,
        height: _size.height,
        child: Stack(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Image.asset(
                      'assets/images/donation.jpg',
                      height: _size.height * 0.28,
                      width: _size.width,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Importance of plasma donation',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Image.asset(
                            'assets/images/dote.png',
                            width: 8,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: (_size.width) - 46,
                          padding: EdgeInsets.only(right: 20),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse non eros quis ante semper fringilla. Interdum et malesuada fames ac ante ipsum primis in faucibus. In mattis pulvinar erat, eu lacinia purus scelerisque ac. Morbi euismod lacus et tellus dignissim ornare. Donec dictum turpis massa, sed tempus purus porta et. Aenean bibendum nisl sit amet ex aliquet, vel fringilla metus laoreet. Proin feugiat sem vitae turpis elementum molestie. Sed eu ullamcorper massa. Pellentesque eu tempor libero, eget feugiat justo.',
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Image.asset(
                            'assets/images/dote.png',
                            width: 8,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: (_size.width) - 46,
                          padding: EdgeInsets.only(right: 20),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse non eros quis ante semper fringilla. Interdum et malesuada fames ac ante ipsum primis in faucibus. In mattis pulvinar erat, eu lacinia purus scelerisque ac. Morbi euismod lacus et tellus dignissim ornare. Donec dictum turpis massa, sed tempus purus porta et. Aenean bibendum nisl sit amet ex aliquet, vel fringilla metus laoreet. Proin feugiat sem vitae turpis elementum molestie. Sed eu ullamcorper massa. Pellentesque eu tempor libero, eget feugiat justo.',
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Image.asset(
                            'assets/images/dote.png',
                            width: 8,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: (_size.width) - 46,
                          padding: EdgeInsets.only(right: 20),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse non eros quis ante semper fringilla. Interdum et malesuada fames ac ante ipsum primis in faucibus. In mattis pulvinar erat, eu lacinia purus scelerisque ac. Morbi euismod lacus et tellus dignissim ornare. Donec dictum turpis massa, sed tempus purus porta et. Aenean bibendum nisl sit amet ex aliquet, vel fringilla metus laoreet. Proin feugiat sem vitae turpis elementum molestie. Sed eu ullamcorper massa. Pellentesque eu tempor libero, eget feugiat justo.',
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'List of donor',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'View all',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15, top: 15),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            width: _size.width * 0.36,
                            height: _size.width * 0.47,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 15, top: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.grey[200],
                                    child: Image.asset(
                                      'assets/images/men.png',
                                      width: 28,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'User name',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'Blood group : A+',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'Other detail',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Container(
                            width: _size.width * 0.36,
                            height: _size.width * 0.47,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 15, top: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.grey[200],
                                    child: Image.asset(
                                      'assets/images/women.png',
                                      width: 28,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'User name',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'Blood group : A+',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'Other detail',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Container(
                            width: _size.width * 0.36,
                            height: _size.width * 0.47,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 15, top: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.grey[200],
                                    child: Image.asset(
                                      'assets/images/other.png',
                                      width: 28,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'User name',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'Blood group : A+',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'Other detail',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15, top: 15, bottom: 30),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            width: _size.width * 0.36,
                            height: _size.width * 0.47,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 15, top: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.grey[200],
                                    child: Image.asset(
                                      'assets/images/men.png',
                                      width: 28,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'User name',
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'Blood group : A+',
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'Other detail',
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Container(
                            width: _size.width * 0.36,
                            height: _size.width * 0.47,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 15, top: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.grey[200],
                                    child: Image.asset(
                                      'assets/images/women.png',
                                      width: 28,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'User name',
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'Blood group : A+',
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'Other detail',
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Container(
                            width: _size.width * 0.36,
                            height: _size.width * 0.47,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 15, top: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.grey[200],
                                    child: Image.asset(
                                      'assets/images/other.png',
                                      width: 28,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'User name',
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'Blood group : A+',
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'Other detail',
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: (_size.width - 50) / 2,
                      height: 38,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(BeADonor.routeName);
                        },
                        elevation: 1,
                        color: Theme.of(context).buttonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          'Be a Donor',
                          style: TextStyle(
                            color: isPressed1 ? Colors.black : Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: (_size.width - 50) / 2,
                      height: 38,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(NeedPlasma.routeName);
                        },
                        elevation: 1,
                        color: Theme.of(context).buttonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          'Need Plasma',
                          style: TextStyle(
                            color: isPressed2 ? Colors.black : Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
