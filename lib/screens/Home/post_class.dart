import 'package:TestApp/screens/profile.dart';
import 'package:flutter/material.dart';

import 'class_info.dart';

class PostClass extends StatefulWidget {
  final String dp;
  final String name;
  final TextStyle textStyleTitle, textStyleDes;
  PostClass({
    Key key,
    @required this.dp,
    @required this.name,
    @required this.textStyleTitle,
    @required this.textStyleDes,
  }) : super(key: key);
  @override
  _PostClassState createState() => _PostClassState();
}

class _PostClassState extends State<PostClass> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => Profile(
                        textStyleDes: widget.textStyleDes,
                      ))),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  "${widget.dp}",
                ),
              ),
            ),
            contentPadding: EdgeInsets.all(0),
            title: InkWell(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => Profile(
                    textStyleDes: widget.textStyleDes,
                  ),
                ),
              ),
              child: Text(
                "${widget.name}",
                style: widget.textStyleTitle,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => ClassInfo(
                        textStyleTitle: widget.textStyleTitle,
                        textStyleDes: widget.textStyleDes,
                      )));
            },
            child: Container(
              // height: 130,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(right: 5, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Subject Name',
                      style: widget.textStyleDes,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        'Teachers name',
                        style: widget.textStyleDes,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
