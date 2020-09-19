import 'package:TestApp/screens/navigation_drawer.dart';
import 'package:flutter/material.dart';

class ListTasks extends StatefulWidget {
  TextStyle textStyleTitle, textStyleDes;
  ListTasks({
    @required this.textStyleTitle,
    @required this.textStyleDes,
  });
  @override
  _ListTasksState createState() => _ListTasksState();
}

class _ListTasksState extends State<ListTasks> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tasks',
          style: widget.textStyleTitle,
        ),
        centerTitle: true,
        elevation: 4,
      ),
      drawer: NavigationDrawer(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10, left: 5, right: 5),
        child: Container(
          width: size.width,
          height: MediaQuery.of(context).orientation == Orientation.portrait
              ? 180
              : 140,
          decoration: BoxDecoration(
            color: Colors.white, //(0XFF667EEA),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[500],
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                width: size.width,
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? 90
                        : 76,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Upload Files',
                        style: widget.textStyleDes,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              icon: Icon(Icons.camera_alt), onPressed: () {}),
                          IconButton(
                              icon: Icon(Icons.file_upload), onPressed: () {}),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              // Divider(
              //   height:00,
              //   color: Colors.grey,
              // ),
              Container(
                width: size.width,
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? 90
                        : 64,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.2, color: Colors.grey),
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                child: InkWell(
                  onTap: () {
                    for (int momo = 10; momo >= 0; momo--) {
                      print('momo  $momo');
                    }
                  },
                  child: Center(
                    child: Text('Submit',
                        style: TextStyle(
                          color: Colors.blueAccent[700],
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Montserrat',
                        ) //widget.textStyleTitle,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, right: 5, left: 5),
        child: Container(
            child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[500],
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
                      padding:
                          const EdgeInsets.only(top: 5, left: 8, bottom: 5),
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
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // width: size.width / 2 - 18,

                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 5, bottom: 5, right: 10),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text('12:00 AM'),
                          SizedBox(
                            height: 10,
                          ),
                          Text('12/2/2021'),
                          SizedBox(
                            height: 10,
                          ),
                          Text('12:00 AM'),
                          SizedBox(
                            height: 10,
                          ),
                          Text('20/2/2021'),
                          SizedBox(
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
        )),
      ),
    );
  }
}
