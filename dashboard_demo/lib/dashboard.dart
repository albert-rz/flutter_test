import 'package:flutter/material.dart';

import './sidebar.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sidebar = SidebarContainer(width: 250, color: Colors.blue);

    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.blueGrey[900],
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


