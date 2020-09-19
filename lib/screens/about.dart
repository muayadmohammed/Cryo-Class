
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'navigation_drawer.dart';

class About extends StatefulWidget {
     TextStyle textStyleTitle, textStyleDes;
  About({
    @required this.textStyleTitle,
    @required this.textStyleDes,
  });
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFF7FC4FD),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'About',
            // style: _title,blac
            style: widget.textStyleTitle,
          ),
          centerTitle: true,
        ),
        drawer: NavigationDrawer(),
        body: Container(
          color: Colors.white,
          child: Center(
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(18.0),
                ),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 17),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                child: ListView(
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 5, left: 5, top: 20),
                      child: Text(
                        '❤️😂حبشكلات العيد',
                        textAlign: TextAlign.center,
                        style:  widget.textStyleTitle,
                        maxLines: 7,
                        // minFontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
