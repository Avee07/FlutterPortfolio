import 'package:flutter/material.dart';

class PreferAppbar extends StatefulWidget {
  const PreferAppbar({Key? key, required this.scaffoldKey}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  // ignore: library_private_types_in_public_api
  _PreferAppbarState createState() =>
      // ignore: no_logic_in_create_state
      _PreferAppbarState(scaffoldKey: scaffoldKey);
}

class _PreferAppbarState extends State<PreferAppbar> {
  final GlobalKey<ScaffoldState> scaffoldKey;

  _PreferAppbarState({required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    final ButtonStyle style = TextButton.styleFrom(
      foregroundColor: Colors.white,
      textStyle: const TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.bold,
        fontFamily: "Caveat",
      ),
    );
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: FittedBox(
        child: Row(
          children: [
            InkWell(
              onTap: () {
                if (scaffoldKey.currentState!.isDrawerOpen) {
                  scaffoldKey.currentState!.closeDrawer();
                  //
                } else {
                  scaffoldKey.currentState!.openDrawer();
                }
              },
              child: const Icon(
                Icons.account_circle_outlined,
                size: 35,
              ),
            ),
            SizedBox(width: screenSize.width / 3),
            SizedBox(
              width: screenSize.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    style: style,
                    onPressed: () {},
                    child: const Text(
                      'Hello',
                    ),
                  ),
                  TextButton(
                    style: style,
                    onPressed: () {},
                    child: const Text(
                      'About',
                    ),
                  ),
                  TextButton(
                    style: style,
                    onPressed: () {},
                    child: const Text(
                      'Work',
                    ),
                  ),
                  TextButton(
                    style: style,
                    onPressed: () {},
                    child: const Text(
                      'Contact',
                    ),
                  ),
                  Container(
                    // Optional: Add padding for spacing
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.cyan, // Border color
                        width: 2.0, // Border width
                      ),
                      borderRadius: BorderRadius.circular(15), // Border radius
                    ),
                    child: TextButton(
                      style: style,
                      onPressed: () {},
                      child: const Text(
                        'Resume',
                        style: TextStyle(
                          color: Colors.cyanAccent,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
