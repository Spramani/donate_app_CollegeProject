import 'package:donate_app/screens/homeScreen.dart';

import 'package:flutter/material.dart';

class Gender {
  final String name;
  final Image iamge;

  Gender(this.name, this.iamge);
}

class BloodGroup {
  final String name;
  BloodGroup(this.name);
}

class Hospitals {
  final String hospitalName;
  Hospitals(this.hospitalName);
}

class ProfileScreen extends StatefulWidget {
  static const routeName = '/Profile-screen';
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isPressed1 = false;
  bool isPressed2 = false;
  bool isPressed3 = false;
  bool isPressed4 = false;
  Gender selectedGender;
  BloodGroup selectedGroup;
  Hospitals selectedHospital;
  List<Gender> genders = <Gender>[
    Gender(
      'Male',
      Image.asset(
        'assets/images/men.png',
        width: 20,
        height: 20,
      ),
    ),
    Gender(
      'Female',
      Image.asset(
        'assets/images/women.png',
        width: 20,
        height: 20,
      ),
    ),
    Gender(
      'Other',
      Image.asset(
        'assets/images/other.png',
        width: 20,
        height: 20,
      ),
    ),
  ];

  List<BloodGroup> bloodGroups = <BloodGroup>[
    BloodGroup('A+'),
    BloodGroup('B+'),
    BloodGroup('O+'),
    BloodGroup('AB+'),
    BloodGroup('A-'),
    BloodGroup('B-'),
    BloodGroup('O-'),
    BloodGroup('AB-'),
  ];

  List<Hospitals> hospitals = <Hospitals>[
    Hospitals('Shalby hospital, navyug college, Rander road, surat.'),
    Hospitals('Shalby hospital, navyug college, Rander road, surat.'),
    Hospitals('Shalby hospital, navyug college, Rander road, surat.'),
    Hospitals('Shalby hospital, navyug college, Rander road, surat.'),
    Hospitals('Shalby hospital, navyug college, Rander road, surat.'),
  ];

  Size _size;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).splashColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 50,
            bottom: 80,
          ),
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Profile',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 28,
                    right: 28,
                  ),
                  child: Container(
                    width: _size.width,
                    height: _size.height,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          transform: Matrix4.translationValues(0, -25, 0),
                          child: Image.asset(
                            'assets/images/verrysmalllogo.png',
                            width: _size.width / 4.5,
                          ),
                        ),
                        SingleChildScrollView(
                          child: Form(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 23,
                              ),
                              child: Column(
                                children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none,
                                      ),
                                      fillColor: Colors.grey[200],
                                      filled: true,
                                      hintText: 'Full name',
                                      hintStyle: TextStyle(
                                        color: Theme.of(context).hintColor,
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                        vertical: 14,
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
                                  SizedBox(
                                    height: 13,
                                  ),
                                  TextFormField(
                                    keyboardType: TextInputType.multiline,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none,
                                      ),
                                      fillColor: Colors.grey[200],
                                      filled: true,
                                      hintText: 'Address',
                                      hintStyle: TextStyle(
                                        color: Theme.of(context).hintColor,
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                        vertical: 14,
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
                                  SizedBox(
                                    height: 13,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none,
                                      ),
                                      fillColor: Colors.grey[200],
                                      filled: true,
                                      hintText: 'Email',
                                      hintStyle: TextStyle(
                                        color: Theme.of(context).hintColor,
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                        vertical: 14,
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

                                  SizedBox(
                                    height: 13,
                                  ),
                                  Container(
                                    width: _size.width,
                                    padding: EdgeInsets.only(
                                      left: 28,
                                      right: 20,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey[200],
                                    ),
                                    child: DropdownButton(
                                      underline: Container(
                                        color: Colors.transparent,
                                      ),
                                      isExpanded: true,
                                      isDense: false,
                                      elevation: 0,
                                      hint: Text('Gender'),
                                      value: selectedGender,
                                      onChanged: (Gender value) {
                                        setState(() {
                                          selectedGender = value;
                                        });
                                      },
                                      items: genders.map((Gender gender) {
                                        return DropdownMenuItem(
                                          value: gender,
                                          child: Row(
                                            children: [
                                              gender.iamge,
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                gender.name,
                                              )
                                            ],
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 13,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none,
                                      ),
                                      fillColor: Colors.grey[200],
                                      filled: true,
                                      hintText: 'Date of birth',
                                      hintStyle: TextStyle(
                                        color: Theme.of(context).hintColor,
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                        vertical: 14,
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
                                  // SizedBox(
                                  //   height: 13,
                                  // ),
                                  // TextFormField(
                                  //   decoration: InputDecoration(
                                  //     enabledBorder: OutlineInputBorder(
                                  //       borderRadius: BorderRadius.circular(10),
                                  //       borderSide: BorderSide.none,
                                  //     ),
                                  //     fillColor: Colors.grey[200],
                                  //     filled: true,
                                  //     hintText: 'Blood group',
                                  //     hintStyle: TextStyle(
                                  //       color: Theme.of(context).hintColor,
                                  //     ),
                                  //     contentPadding: EdgeInsets.symmetric(
                                  //       vertical: 14,
                                  //       horizontal: 28,
                                  //     ),
                                  //     focusedBorder: OutlineInputBorder(
                                  //       borderRadius: BorderRadius.circular(10),
                                  //       borderSide: BorderSide(
                                  //         color: Theme.of(context).accentColor,
                                  //         width: 1,
                                  //         style: BorderStyle.solid,
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ),
                                  SizedBox(
                                    height: 13,
                                  ),
                                  Container(
                                    width: _size.width,
                                    padding: EdgeInsets.only(
                                      left: 28,
                                      right: 20,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey[200],
                                    ),
                                    child: DropdownButton(
                                      underline: Container(
                                        color: Colors.transparent,
                                      ),
                                      isExpanded: true,
                                      isDense: false,
                                      elevation: 0,
                                      hint: Text('Blood Group'),
                                      value: selectedGroup,
                                      onChanged: (BloodGroup value) {
                                        setState(() {
                                          selectedGroup = value;
                                        });
                                      },
                                      items: bloodGroups
                                          .map((BloodGroup bloodGroups) {
                                        return DropdownMenuItem(
                                          value: bloodGroups,
                                          child: Text(
                                            bloodGroups.name,
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                  //FormField(builder: )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 25,
                          ),
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Are you covid patient?',
                            style: TextStyle(
                              color: Theme.of(context).hintColor,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 25,
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: _size.width / 3.7,
                                height: 34,
                                child: RaisedButton(
                                  onPressed: () {
                                    setState(() {
                                      isPressed1 = !isPressed1;
                                    });
                                  },
                                  elevation: 1,
                                  color: isPressed1
                                      ? Theme.of(context).buttonColor
                                      : Colors.grey[200],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                      color: isPressed1
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Container(
                                width: _size.width / 3.7,
                                height: 34,
                                child: RaisedButton(
                                  onPressed: () {
                                    setState(() {
                                      isPressed2 = !isPressed2;
                                    });
                                  },
                                  elevation: 1,
                                  color: isPressed2
                                      ? Theme.of(context).buttonColor
                                      : Colors.grey[200],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                      color: isPressed2
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                          ),
                          alignment: Alignment.topLeft,
                          child: Text(
                            'was you?',
                            style: TextStyle(
                              color: Theme.of(context).hintColor,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 18,
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: (_size.width / 2) - 50,
                                height: 34,
                                child: RaisedButton(
                                  onPressed: () {
                                    setState(() {
                                      isPressed3 = !isPressed3;
                                    });
                                  },
                                  elevation: 1,
                                  color: isPressed3
                                      ? Theme.of(context).buttonColor
                                      : Colors.grey[200],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Text(
                                    'Home quarantine',
                                    style: TextStyle(
                                      color: isPressed3
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                width: (_size.width / 2) - 50,
                                height: 34,
                                child: RaisedButton(
                                  onPressed: () {
                                    setState(() {
                                      isPressed4 = !isPressed4;
                                    });
                                  },
                                  elevation: 1,
                                  color: isPressed4
                                      ? Theme.of(context).buttonColor
                                      : Colors.grey[200],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Text(
                                    'Hospitalized',
                                    style: TextStyle(
                                      color: isPressed4
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w100,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Spacer(),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          width: _size.width / 3,
                          height: 38,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(HomeScreen.routeName);
                            },
                            elevation: 1,
                            color: Theme.of(context).buttonColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              'Continue',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
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
        ),
      ),
    );
  }
}
