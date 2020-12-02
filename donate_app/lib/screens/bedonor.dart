import 'package:flutter/material.dart';

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
  BloodGroup selectedGroup;
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
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
      body: Container(
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
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 80,
                            height: 34,
                            child: RaisedButton(
                              onPressed: () {
                                setState(() {});
                              },
                              elevation: 3,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Text(
                                'Male',
                                style: TextStyle(
                                  color: Theme.of(context).buttonColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Container(
                            width: 80,
                            height: 34,
                            child: RaisedButton(
                              onPressed: () {
                                setState(() {});
                              },
                              elevation: 3,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Text(
                                'Female',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    'Male',
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
                        'What is your Blood group?',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Container(
                        width: 220,
                        height: 38,
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
                            'choose ypur blood group',
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
                    'B+',
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
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 180,
                            height: 38,
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
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Container(
                            width: 70,
                            height: 34,
                            child: RaisedButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      popupItem(context),
                                );
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
                    ],
                  ),
                  Text(
                    'B+',
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
