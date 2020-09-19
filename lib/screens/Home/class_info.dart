import 'package:TestApp/util/data.dart';
import 'package:flutter/material.dart';

import 'item_info.dart';

class ClassInfo extends StatefulWidget {
  final TextStyle textStyleTitle, textStyleDes;
  ClassInfo({@required this.textStyleTitle, @required this.textStyleDes});
  @override
  _ClassInfoState createState() => _ClassInfoState();
}

class _ClassInfoState extends State<ClassInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: Text(
          'Subject',
          style: widget.textStyleTitle,
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20),
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemInfo(
            textStyleTitle: widget.textStyleTitle,
            textStyleDes: widget.textStyleDes,
          );
        },
      ),
    );
  }
}
