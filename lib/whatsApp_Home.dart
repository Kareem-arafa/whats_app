import 'package:flutter/material.dart';
import 'package:whats_app/pages/call_screen.dart';
import 'package:whats_app/pages/camera_screen.dart';
import 'package:whats_app/pages/chat_screen.dart';
import 'package:whats_app/pages/status_screen.dart';

class whatsAppHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return whatsAppHomeState();
  }
}

class whatsAppHomeState extends State<whatsAppHome> with SingleTickerProviderStateMixin{
  TabController _tabController;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=new TabController(length: 4, vsync: this,initialIndex: 1);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text("WhatsApp"),
        elevation: 7.0,
        bottom:new TabBar(
          controller: _tabController ,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              new Tab(icon: Icon(Icons.camera_alt),),
              new Tab(text: "CHATS",),
              new Tab(text: "STATUS",),
              new Tab(text:"CALLS",)
            ],),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
          new Icon(Icons.more_vert)
        ],
      ),
      body: new TabBarView(
          controller: _tabController,
          children: <Widget>[
            new CameraScreen(),
            new ChatScreen(),
            new StatusScreen(),
            new CallScreen(),
          ],),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
          child: new Icon(Icons.message,color: Colors.white,),
          onPressed: ((){
            print("open Chat");
          })
      ),
    );
  }
}