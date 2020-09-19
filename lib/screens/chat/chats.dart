import 'package:TestApp/screens/chat/chat_item.dart';
import 'package:TestApp/util/data.dart';
import 'package:flutter/material.dart';

import '../navigation_drawer.dart';

class Chats extends StatefulWidget {
    TextStyle textStyleTitle, textStyleDes, textStyleSearch;
  Chats(
      {@required this.textStyleTitle,
      @required this.textStyleDes,
      @required this.textStyleSearch});
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats>
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
        title: TextField(
          decoration: InputDecoration.collapsed(
            hintText: 'Search',
            hintStyle: widget.textStyleSearch
          ),
        ),
       elevation: 4,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Theme.of(context).accentColor,
          labelColor: Theme.of(context).accentColor,
          unselectedLabelColor: Theme.of(context).textTheme.caption.color,
          isScrollable: false,
          tabs: <Widget>[
            Tab(
              text: "Message",
            ),
            Tab(
              text: "Active",
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
              Map chat = chats[index];
              return ChatItem(
                dp: chat['dp'],
                name: chat['name'],
                isOnline: chat['isOnline'],
                counter: chat['counter'],
                msg: chat['msg'],
                time: chat['time'],
                textStyleTitle: widget.textStyleTitle,
            textStyleDes: widget.textStyleDes,
              );
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
              return ChatItem(
                dp: chat['dp'],
                name: chat['name'],
                isOnline: chat['isOnline'],
                counter: chat['counter'],
                msg: chat['msg'],
                time: chat['time'],
                textStyleTitle: widget.textStyleTitle,
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