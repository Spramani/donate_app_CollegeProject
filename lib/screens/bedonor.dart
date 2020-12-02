import 'package:flutter/material.dart';

import 'sidebar.dart';

class BloodGroup {
  final String name;
  BloodGroup(this.name);
}

class BeADonor extends StatefulWidget {
  static const routeName = '/be a donor';
  @override
  _BeADonorState createState() => _BeADonorState();
}

class _BeADonorState extends State<BeADonor> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  TextEditingController textEditingController = new TextEditingController();
  String getvalues;
  String value1;
  String value2;

  BloodGroup selectedGroup;
  bool isPressed1 = false;
  bool isPressed2 = false;
  bool isPressed3 = false;
  bool isPressed4 = false;
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

  Size _size;

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
          centerTitle: true,
          title: Text(
            'Be a donor',
            style: TextStyle(
              color: Theme.of(context).buttonColor,
              fontSize: 20,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/notification.png',
                width: 25,
              ),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
          ),
          child: Column(
            children: [
              Container(
                width: _size.width,
                height: _size.height * 0.15,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'What is your gender?',
                          style: TextStyle(
                            fontSize: 19,
                          ),
                        ),
                        SizedBox(
                          height: 19,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 18,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: (_size.width * 0.50) / 2,
                                    height: 35,
                                    child: RaisedButton(
                                      onPressed: () {
                                        setState(() {
                                          value1 = "Male";
                                          isPressed4 = false;
                                          isPressed3 = !isPressed3;
                                        });
                                      },
                                      elevation: 1,
                                      color: isPressed3
                                          ? Theme.of(context).buttonColor
                                          : Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Text(
                                        'Male',
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
                                    width: (_size.width * 0.50) / 2,
                                    height: 35,
                                    child: RaisedButton(
                                      onPressed: () {
                                        setState(() {
                                          value1 = "Female";
                                          isPressed3 = false;
                                          isPressed4 = !isPressed4;
                                        });
                                      },
                                      elevation: 1,
                                      color: isPressed4
                                          ? Theme.of(context).buttonColor
                                          : Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Text(
                                        'Female',
                                        style: TextStyle(
                                          color: isPressed4
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      '${value1}',
                      style: TextStyle(
                        color: Theme.of(context).buttonColor,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: _size.width,
                height: _size.height * 0.16,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'What is your Blood group?',
                          style: TextStyle(
                            fontSize: 19,
                          ),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Container(
                          width: (_size.width * 0.68),
                          height: 35,
                          padding: EdgeInsets.only(
                            left: 28,
                            right: 20,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 5,
                                spreadRadius: 2,
                                color: Colors.black12,
                              )
                            ],
                          ),
                          child: DropdownButton(
                            underline: Container(
                              color: Colors.transparent,
                            ),
                            isExpanded: true,
                            isDense: false,
                            elevation: 0,
                            hint: Text(
                              'Choose Your Blood Group',
                              style: TextStyle(
                                color: Theme.of(context).buttonColor,
                              ),
                            ),
                            value: selectedGroup,
                            onChanged: (BloodGroup value) {
                              setState(() {
                                selectedGroup = value;
                              });
                            },
                            items: bloodGroups.map((BloodGroup bloodGroups) {
                              return DropdownMenuItem(
                                value: bloodGroups,
                                child: Text(
                                  bloodGroups.name,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '${selectedGroup?.name}',
                      style: TextStyle(
                        color: Theme.of(context).buttonColor,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: _size.width,
                height: _size.height * 0.16,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'What is your age?',
                          style: TextStyle(
                            fontSize: 19,
                          ),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Container(
                          width: (_size.width * 0.70),
                          padding: EdgeInsets.all(1),
                          child: Row(
                            children: [
                              Container(
                                width: (_size.width * 0.88) / 2,
                                height: 35,
                                padding: EdgeInsets.only(
                                  left: 28,
                                  right: 20,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 0),
                                      blurRadius: 5,
                                      spreadRadius: 2,
                                      color: Colors.black12,
                                    )
                                  ],
                                ),
                                child: Center(
                                  child: Container(
                                    child: TextFormField(
                                      controller: textEditingController,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              Container(
                                width: (_size.width * 0.40) / 2,
                                height: 35,
                                child: RaisedButton(
                                  onPressed: () {
                                    setState(() {
                                      getvalues = textEditingController.text;
                                    });
                                    // showDialog(
                                    //   context: context,
                                    //   builder: (BuildContext context) =>
                                    //       popupItem(context),
                                    // );
                                  },
                                  elevation: 3,
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Text(
                                    'Done',
                                    style: TextStyle(
                                      color: Theme.of(context).buttonColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '$getvalues',
                      style: TextStyle(
                        color: Theme.of(context).buttonColor,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget popupItem(BuildContext context) {
  Size _size;
  _size = MediaQuery.of(context).size;
  return AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    content: Container(
      width: _size.width,
      height: _size.height * 0.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/smallLogo.png',
              width: _size.width / 4,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Thank you!',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Text(
              'You will be notify soon for a donation',
              style: TextStyle(
                fontSize: 17,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ),
  );
}
