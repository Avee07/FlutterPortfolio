import 'package:flutter/material.dart';

class Introduction extends StatelessWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(
      fontSize: 35,
      color: Color(0xff5ce9ca),
      fontFamily: "Caveat",
    );
    const nameStyle = TextStyle(
        fontSize: 45,
        color: Colors.white,
        fontFamily: "Caveat",
        fontWeight: FontWeight.bold);

    var screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double containerWidth = screenWidth * 0.1;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Hii , my name is", style: textStyle),
        const Padding(
          padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
          child: Text("Arwinder Singh", style: nameStyle),
        ),
        const Text(
          "I build Things for the Android and Web",
          style: nameStyle,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, containerWidth, 0),
          child: Text(
            "Entrylevel front-end developer with one year of experience in maintaining and building web pages. Seeking for new opportunities and challenges that will expand my skill set.",
            style: textStyle.copyWith(fontSize: 30),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 18),
                side: const BorderSide(width: 2.0, color: Color(0xff5ce9ca))),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Get In Touch',
                style: TextStyle(
                  color: Color(0xff5ce9ca),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
