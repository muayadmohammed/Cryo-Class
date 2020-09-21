import 'package:flutter/material.dart';

class Misssing extends StatefulWidget {
  TextStyle textStyleTitle, textStyleDes;
  Misssing({
    @required this.textStyleTitle,
    @required this.textStyleDes,
  });
  @override
  _MisssingState createState() => _MisssingState();
}

class _MisssingState extends State<Misssing> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 30,
            itemBuilder: (BuildContext ctxt, int index) {
              return Container(
                  child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    // width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[300],
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 5, left: 8, bottom: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Name ',
                                  style: widget.textStyleDes,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Dec ....',
                                  style: widget.textStyleDes,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          
                       
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 5, bottom: 5, right: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [  SizedBox(
                                  height: 10,
                                ),
                                Text('12:00 AM'),  SizedBox(
                                  height: 10,
                                ),
                                Text('12/2/2021'),  SizedBox(
                                  height: 10,
                                ),
                                Text('12:00 AM'),  SizedBox(
                                  height: 10,
                                ),
                                Text('20/2/2021'),  SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ));
            }));
  }
}
