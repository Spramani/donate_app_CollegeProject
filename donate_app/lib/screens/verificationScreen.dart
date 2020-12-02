import 'package:donate_app/screens/profilescreen.dart';
import 'package:flutter/material.dart';

class VerifyScreen extends StatefulWidget {
  static const routeName = 'verification-screen';
  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  Size _size;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).splashColor,
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(top: 100.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/smallLogo.png',
                  width: _size.width / 3.1,
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  'Enter Verification code',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    width: _size.width,
                    height: _size.height / 3,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(left: 42, right: 42),
                          child: Text(
                            'Enter otp that is send on this +91 99*** ***56',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Spacer(),
                        Spacer(),
                        Form(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 40,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 45,
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(6),
                                        borderSide: BorderSide.none,
                                      ),
                                      fillColor: Colors.grey[200],
                                      filled: true,
                                      contentPadding: EdgeInsets.symmetric(
                                        vertical: 17,
                                        horizontal: 32,
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(6),
                                        borderSide: BorderSide(
                                          color: Theme.of(context).accentColor,
                                          width: 1,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 45,
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(6),
                                        borderSide: BorderSide.none,
                                      ),
                                      fillColor: Colors.grey[200],
                                      filled: true,
                                      contentPadding: EdgeInsets.symmetric(
                                        vertical: 17,
                                        horizontal: 28,
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(6),
                                        borderSide: BorderSide(
                                          color: Theme.of(context).accentColor,
                                          width: 1,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 45,
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(6),
                                        borderSide: BorderSide.none,
                                      ),
                                      fillColor: Colors.grey[200],
                                      filled: true,
                                      contentPadding: EdgeInsets.symmetric(
                                        vertical: 17,
                                        horizontal: 28,
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(6),
                                        borderSide: BorderSide(
                                          color: Theme.of(context).accentColor,
                                          width: 1,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 45,
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(6),
                                        borderSide: BorderSide.none,
                                      ),
                                      fillColor: Colors.grey[200],
                                      filled: true,
                                      contentPadding: EdgeInsets.symmetric(
                                        vertical: 16,
                                        horizontal: 28,
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(6),
                                        borderSide: BorderSide(
                                          color: Theme.of(context).accentColor,
                                          width: 1,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 26),
                          alignment: Alignment.centerRight,
                          child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Resend ->',
                              style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: _size.width / 2,
                          height: 38,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(ProfileScreen.routeName);
                            },
                            elevation: 01,
                            color: Theme.of(context).buttonColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              'Next',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
