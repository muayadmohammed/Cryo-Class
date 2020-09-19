import 'package:TestApp/util/data.dart';
import 'package:flutter/material.dart';

import 'navigation_drawer.dart';
class Notifications extends StatefulWidget {
    TextStyle textStyleTitle, textStyleDes;
  Notifications(
      {@required this.textStyleTitle,
      @required this.textStyleDes,});
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications",style: widget.textStyleTitle,
        ),
        centerTitle: true,
       
      ),
      drawer: NavigationDrawer(),
      body: ListView.separated(
        padding: EdgeInsets.all(10),
        separatorBuilder: (BuildContext context, int index) {
          return Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 0.5,
              width: MediaQuery.of(context).size.width / 1.3,
              child: Divider(),
            ),
          );
        },
        itemCount: notifications.length,
        itemBuilder: (BuildContext context, int index) {
          Map notif = notifications[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                  notif['dp'],
                ),
                radius: 25,
              ),
              contentPadding: EdgeInsets.all(0),
              title: Text(notif['notif'], style: widget.textStyleDes),
              trailing: Text(
                notif['time'],
                style: widget.textStyleDes
              ),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}