import 'dart:math';

import 'package:TestApp/screens/chat/chat_bubble.dart';
import 'package:TestApp/screens/profile.dart';
import 'package:TestApp/util/data.dart';
import 'package:flutter/material.dart';

class Conversation extends StatefulWidget {
     TextStyle textStyleDes;
  Conversation(
      {
      @required this.textStyleDes,
      });
  @override
  _ConversationState createState() => _ConversationState();
}

class _ConversationState extends State<Conversation> {
  static Random random = Random();
  String name = names[random.nextInt(10)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_backspace,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        titleSpacing: 0,
        title: InkWell(
          
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 0.0, right: 10.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/cm${random.nextInt(10)}.jpeg",
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Online",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          onTap: () {
                Navigator.of(context, rootNavigator: true).push(
            MaterialPageRoute(
              builder: (BuildContext context){
                return Profile( textStyleDes: widget.textStyleDes,);
              },
            ),
          );
          },
        ),
      
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Flexible(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10),
                itemCount: conversation.length,
                reverse: true,
                itemBuilder: (BuildContext context, int index) {
                  Map msg = conversation[index];
                  return ChatBubble(
                    message: msg['type'] == "text"
                        ? messages[random.nextInt(10)]
                        : "assets/cm${random.nextInt(10)}.jpeg",
                    username: msg["username"],
                    time: msg["time"],
                    type: msg['type'],
                    replyText: msg["replyText"],
                    isMe: msg['isMe'],
                    isGroup: msg['isGroup'],
                    isReply: msg['isReply'],
                    replyName: name,
                    textStyleDes: widget.textStyleDes,
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomAppBar(
                elevation: 10,
                color: Theme.of(context).primaryColor,
                child: Container(
                  constraints: BoxConstraints(
                    maxHeight: 100,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      // IconButton(
                      //   icon: Icon(
                      //     Icons.add,
                      //     color: Theme.of(context).accentColor,
                      //   ),
                      //   onPressed: () {},
                      // ),
                       
                      Directionality(
                        textDirection: TextDirection.rtl,
                                              child: Flexible(
                            child: TextField(
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Theme.of(context).textTheme.title.color,
                              ),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10.0),
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                hintText: "...Write your message",
                                hintStyle: widget.textStyleDes,
                                suffixIcon:IconButton(
                        icon: Icon(
                          Icons.send,
                          color: Theme.of(context).accentColor,
                        ),
                        onPressed: () {},
                      ),
                              ),
                              maxLines: null,
                            ),
                          ),
                      ),
                     
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}