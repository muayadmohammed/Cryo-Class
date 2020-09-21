import 'required.dart';
import 'package:TestApp/screens/navigation_drawer.dart';
import 'package:TestApp/util/data.dart';
import 'package:flutter/material.dart';

import 'Missing.dart';

class Homework extends StatefulWidget {
  TextStyle textStyleTitle, textStyleDes;
  Homework({
    @required this.textStyleTitle,
    @required this.textStyleDes,
  });
  @override
  _HomeworkState createState() => _HomeworkState();
}

class _HomeworkState extends State<Homework>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 0, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HomeWork',
          style: widget.textStyleTitle,
        ),
        centerTitle: true,
        elevation: 4,
        bottom: TabBar(
          controller: _tabController,
          // indicatorColor: Theme.of(context).accentColor,
          // labelColor: Theme.of(context).accentColor,
          // unselectedLabelColor: Theme.of(context).textTheme.caption.color,
          isScrollable: false,
          tabs: <Widget>[
            Tab(
              text: "Required",
            ),
            Tab(
              text: "Missing",
            ),
          ],
        ),
      ),
      drawer: NavigationDrawer(),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          ListView.separated(
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
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index) {
            
              return Required(textStyleTitle: widget.textStyleTitle,
            textStyleDes: widget.textStyleDes,);
            },
          ),
          ListView.separated(
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
            itemCount: active.length,
            itemBuilder: (BuildContext context, int index) {
              Map chat = active[index];
              return Misssing(textStyleTitle: widget.textStyleTitle,
            textStyleDes: widget.textStyleDes,
                  );
            },
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
