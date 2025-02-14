
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import './dashboard.dart';

// Sidebar as a Separate Class
class SidebarContainer extends StatelessWidget {
  final double? width;
  final Color? color;

  const SidebarContainer({super.key, this.width, this.color});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: width,
      color: color,
      child: Column(
        children: [
          SizedBox(height: 20),
          Text("Menu", style: TextStyle(color: Colors.white, fontSize: 20)),
          Divider(color: Colors.white),
          SidebarButton(title: "Dashboard", titleColor: Colors.white, icon: Icons.dashboard, iconColor: Colors.orange),
          SidebarButton(title: "Settingsss"),
        ],
      ),
    );
  }
}

class SidebarButton extends StatelessWidget{
  final String title;
  final Color? titleColor;
  final IconData? icon;
  final Color? iconColor;

  const SidebarButton(
    {
      super.key, 
      this.title = "Default", 
      this.titleColor = Colors.black,
      this.icon = Icons.abc, 
      this.iconColor = Colors.black
    }
  );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: iconColor),
      title: Text(title, style: TextStyle(color: titleColor)),
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardPage()))
    );
  }
}


// Content Area as a Separate Class
class ContentContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: Colors.grey[200],
      child: Center(
        child: Text("Main Content Area", style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

// Reusable CustomContainer Class
class CustomContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? color;
  final Widget? child;

  CustomContainer({this.width, this.height, this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
      child: child,
    );
  }
}