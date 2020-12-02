import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  Size _size;
  //static const routeName = '/drawer';
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;

    return Drawer(
      elevation: 40,
      child: Container(
        width: _size.width,
        height: _size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/slidemenu.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(
                  left: _size.width * 0.06, top: _size.height * 0.07),
              child: Image.asset(
                'assets/images/verrysmalllogo.png',
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: _size.height * 0.5,
                padding: EdgeInsets.only(left: _size.width * 0.022),
                child: ListView(
                  children: [
                    listTile(context, 'homeicon.png', 'Home'),
                    SizedBox(
                      height: 8,
                    ),
                    listTile(context, 'catagory.png', 'Categories'),
                    SizedBox(
                      height: 8,
                    ),
                    listTile(context, 'offer.png', 'Offers and packages'),
                    SizedBox(
                      height: 8,
                    ),
                    listTile(context, 'nationalevents.png', 'Single services'),
                    SizedBox(
                      height: 8,
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

Widget listTile(BuildContext context, String image, String title) {
  return ListTile(
    leading: Image.asset(
      'assets/images/$image',
      width: 24,
    ),
    //contentPadding: EdgeInsets.symmetric(horizontal: 3),
    title: Text(
      title,
      style: TextStyle(
        fontSize: 16,
        color: Theme.of(context).hintColor,
        fontWeight: FontWeight.normal,
        letterSpacing: 1,
      ),
    ),
    visualDensity: VisualDensity.compact,
    dense: true,
    onTap: () {},
  );
}
