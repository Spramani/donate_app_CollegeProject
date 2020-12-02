import 'package:donate_app/screens/verificationScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/Login-screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Size _size;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).splashColor,
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
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
                'Login',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  width: _size.width,
                  height: _size.height / 3.3,
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
                          'Login / Signup with mobile number',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Spacer(),
                      Form(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                              fillColor: Colors.grey[200],
                              filled: true,
                              hintText: 'Enter your mobile number',
                              hintStyle: TextStyle(
                                color: Theme.of(context).hintColor,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 28,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Theme.of(context).accentColor,
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: _size.width / 3,
                        height: 38,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(VerifyScreen.routeName);
                          },
                          elevation: 1,
                          color: Theme.of(context).buttonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            'Get otp',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
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
    );
  }
}
