import 'package:flutter/material.dart';

import './sidebar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sidebar = SidebarContainer(width: 250, color: Colors.blue);

    return Scaffold(
      appBar: AppBar(
        title: Text("Main page"),
        backgroundColor: Colors.lightBlue,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {})
      ),
      body: Row(
        children: [
          sidebar,
          Expanded(
            child: ContentContainer(),
          ),
        ],
      ),
    );
  }
}


