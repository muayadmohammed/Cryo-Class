import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'about.dart';
import 'contact.dart';
import 'feed_back.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {

    TextStyle textStyleTitle = TextStyle(
      color: Colors.black,
      fontSize: 17,
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
    );
    TextStyle textStyleDes = TextStyle(
      color: Colors.grey[800],
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
    );
    Widget _Sizebox = SizedBox(
      height: 12,
    );
    Widget padding(Widget padding) {
      return Padding(
        padding: const EdgeInsets.only(left: 8),
        child: padding,
      );
    }

    return Drawer(
      //  child: drawerItems,

      child: ListView(
        children: <Widget>[
          Container(
            height: 200,
            decoration: BoxDecoration(),
            child: Image.asset(
              'assets/logo.JPG',
              fit: BoxFit.cover,
            ),
            // child: Image.network('http://muayad.aba.vg/images/AllProject/s1.png',fit: BoxFit.cover,),
          ),
          Divider(
            height: 0,
            thickness: 0,
            color: Colors.blue,
          ),
          _Sizebox,
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => Contact(
                    textStyleTitle: textStyleTitle,
                  ),
                ),
              );
            },
            child: padding(
              Text(
                'Contact',
                style: textStyleTitle,
                textAlign: TextAlign.left,
              ),
            ),
          ),
          _Sizebox,
          Divider(
            height: 0,
            thickness: 0,
            color: Colors.blue,
          ),
          _Sizebox,
          InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => FeedBack(
                      textStyleTitle: textStyleTitle,
                      textStyleDes: textStyleDes,
                    ),
                  ),
                );
              },
              child: padding(
                Text(
                  'Feedback',
                  style: textStyleTitle,
                  textAlign: TextAlign.left,
                ),
              )),
          _Sizebox,
          Divider(
            height: 0,
            thickness: 0,
            color: Colors.blue,
          ),
          _Sizebox,
          InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => About(
                      textStyleTitle: textStyleTitle,
                      textStyleDes: textStyleDes,
                    ),
                  ),
                );
              },
              child: padding(
                Text(
                  'About',
                  style: textStyleTitle,
                  textAlign: TextAlign.left,
                ),
              )),
          _Sizebox,
          Divider(
            height: 0,
            thickness: 0,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
