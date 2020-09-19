import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'navigation_drawer.dart';

class FeedBack extends StatefulWidget {
    TextStyle textStyleTitle, textStyleDes;
  FeedBack({
    @required this.textStyleTitle,
    @required this.textStyleDes,
  });
  @override
  _FeedBackState createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFF7FC4FD),
        appBar: AppBar(
          // iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'Feedback',
            style: widget.textStyleTitle,//TextStyle(color: Colors.black, fontFamily: 'Montserrat',fontWeight: FontWeight.w400),
            // style: _title,
          ),
          centerTitle: true, elevation: 4,
        ),
        drawer: NavigationDrawer(),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(18.0),
                  ),
                ),
                margin:
                    const EdgeInsets.symmetric(horizontal: 19, vertical: 50),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 19, vertical: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Full Name',
                            style: widget.textStyleDes,
                          ),
                          Icon(
                            Icons.person_outline,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                      TextField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                            //hoverColor: Colors.blue,
                            ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Email or Phone",
                            style: widget.textStyleDes,
                          ),
                          Icon(
                            Icons.mail_outline,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                      TextField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Massege",
                            style: widget.textStyleDes,),
                          Icon(
                            Icons.message,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                      TextField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                     
                      Center(
                        child: Container(
                            height: 50.0,
                            width: 105.0,
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              shadowColor: Colors.blueAccent,
                              color: Colors.blue,
                              elevation: 7.0,
                              child: GestureDetector(
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    'Send',
                                    style: widget.textStyleTitle,                                  ),
                                ),
                              ),
                            )),
                      ),
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
