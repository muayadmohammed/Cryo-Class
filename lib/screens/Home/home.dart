
import 'package:TestApp/util/data.dart';
import 'package:flutter/material.dart';

import '../navigation_drawer.dart';
import 'post_class.dart';

class Home extends StatefulWidget {
  TextStyle textStyleTitle, textStyleDes, textStyleSearch;
  Home(
      {@required this.textStyleTitle,
      @required this.textStyleDes,
      @required this.textStyleSearch});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: widget.textStyleSearch,
              ),
        ),
      ),
      drawer: NavigationDrawer(),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20),
        itemCount: 10, // posts.length,
        itemBuilder: (BuildContext context, int index) {
          Map post = posts[index];
          return PostClass(
            name: post['name'],
            dp: post['dp'],
            textStyleTitle: widget.textStyleTitle,
            textStyleDes: widget.textStyleDes,
          );
        },
      ),
    );
  }
}
