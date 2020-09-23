import 'package:TestApp/util/data.dart';
import 'package:flutter/material.dart';

import 'navigation_drawer.dart';

class Notifications extends StatefulWidget {
  TextStyle textStyleTitle, textStyleDes;
  Notifications({
    @optionalTypeArgs this.textStyleTitle,
    @optionalTypeArgs this.textStyleDes,
  });
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications",
          style: widget.textStyleTitle,
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
              leading: Stack(
                alignment: Alignment.bottomRight,
                // fit: StackFit.loose,
                children: [
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: AssetImage(
                            notif['dp'],
                          ),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Color(0XFF5d6165),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                        child: notif['icon']),
                  ),
                ],
              ),
             
              contentPadding: EdgeInsets.all(0),
              title: Text(notif['notif'], style: widget.textStyleDes),
              trailing: Text(notif['time'], style: widget.textStyleDes),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
