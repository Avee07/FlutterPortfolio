import "package:flutter/material.dart";

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(
      fontSize: 50,
      color: Color(0xff5ce9ca),
      fontFamily: "Caveat",
    );

    const nameStyle = TextStyle(
        fontSize: 25,
        color: Colors.white,
        fontFamily: "Caveat",
        fontWeight: FontWeight.normal);

    var screenSize = MediaQuery.of(context).size;

    return Center(
      child: SizedBox(
        width: screenSize.width / 2,
        child: Column(
          children: [
            Text(
              "What's Next?",
              style: textStyle,
            ),
            Text(
              "Get In Touch",
              style: nameStyle.copyWith(fontSize: 40),
            ),
            const Text(
              "Although ,I am not Looking for any new Opportunities.But myinbox will always open for you.Whether you have a question or just want to say hii,I will try my best to get to you as soon as possible",
              style: nameStyle,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 18),
                    side:
                        const BorderSide(width: 2.0, color: Color(0xff5ce9ca))),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Say Hello',
                    style: TextStyle(
                      color: Color(0xff5ce9ca),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
