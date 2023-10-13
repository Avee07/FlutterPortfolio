import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var screenSize = MediaQuery.of(context).size;
    const nameStyle = TextStyle(
      fontSize: 30,
      color: Colors.white,
      fontFamily: "Caveat",
    );

    List<String> items = [
      "Flutter",
      "Dart",
      "React",
      "JavaScript",
      "HTML",
      "CSS",
      "Bootstrap",
    ];
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Text(
                      "About me",
                      style: nameStyle.copyWith(
                        fontSize: 50,
                        color: const Color(0xff5ce9ca),
                      ),
                    ),
                  ),
                  const Text(
                    "I am a person who is positive about every aspect of life. There are many things I like to do, to see, and to experience. I like to read, I like to write; I like to think, I like to dream; I like to talk, I like to listen.",
                    style: nameStyle,
                  ),
                  const Text(
                    "Here are the Few technologies I've been working recently",
                    style: nameStyle,
                  ),
                  SizedBox(
                    height: 350,
                    width: 350,
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          horizontalTitleGap: 10,
                          leading: const Icon(
                            Icons.arrow_right,
                            size: 30,
                            color: Color(0xff5ce9ca),
                          ),
                          title: Text(
                            items[index],
                            style: nameStyle.copyWith(fontSize: 20),
                          ),
                        );
                      },
                    ),
                  ),
                  // SizedBox(
                  //   height: 300,
                  //   child: GridView.builder(
                  //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  //         crossAxisCount: 2,
                  //         crossAxisSpacing: 2,
                  //         mainAxisSpacing: 2,
                  //         childAspectRatio: 2),
                  //     itemCount: items.length,
                  //     itemBuilder: (context, index) {
                  //       return ListTile(
                  //         horizontalTitleGap: 1,
                  //         minVerticalPadding: 1,
                  //         contentPadding: const EdgeInsets.all(0),
                  //         leading: const Icon(
                  //           Icons.arrow_right,
                  //           size: 30,
                  //           color: Color(0xff5ce9ca),
                  //         ),
                  //         title: Text(
                  //           items[index],
                  //           style: nameStyle,
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // )
                ],
              ),
            ),
          ),
          // ##################################################
          const SizedBox(width: 50),
          //####################################################
          Flexible(
            flex: 0,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff5ce9ca), // Border color
                    width: 3,
                  ),
                ),
                child: Image.asset(
                  'imgavee.jpeg',
                  height: 250,
                  width: 200,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
