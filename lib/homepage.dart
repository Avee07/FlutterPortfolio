import 'package:flutter/material.dart';
import 'package:portfolio/about.dart';
import 'package:portfolio/contact.dart';
import 'package:portfolio/home_drawer.dart';
import 'package:portfolio/introduction.dart';
import 'package:portfolio/prefer_appbar.dart';
import 'package:portfolio/work.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Color myPrimaryColor = const Color(0xff0a192f);
    //  Color myAccentColor = const Color(0xff5ce9ca);
    var screenSize = MediaQuery.of(context).size;
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    // ScrollController _scrollController = ScrollController();

    return Scaffold(
      backgroundColor: myPrimaryColor,
      key: scaffoldKey,
      appBar: screenSize.width < 600
          ? AppBar()
          : PreferredSize(
              preferredSize: Size(screenSize.width, 100),
              child: PreferAppbar(scaffoldKey: scaffoldKey)),
      drawer: const MyDrawer(),
      body: const SingleChildScrollView(
        //controller: _scrollController,
        child: Padding(
          padding: EdgeInsets.fromLTRB(100, 100, 50, 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Introduction(),
              AboutPage(),
              Work(),
              Contact(),
            ],
          ),
        ),
      ),
    );
  }
}
