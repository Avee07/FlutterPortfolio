import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return const Drawer(
      //drawer navigation on scaffold
      child: SafeArea(
        child: Column(
          //column widget
          children: [
            ListTile(
              leading: Icon(Icons.home_work),
              title: Text("Home Page"),
              subtitle: Text("Subtitle menu 1"),
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text("Search Page"),
              subtitle: Text("Subtitle menu 1"),
            ),

            //put more menu items here
          ],
        ),
      ),
    );
  }
}
