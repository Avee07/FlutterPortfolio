import 'package:flutter/material.dart';

class Work extends StatelessWidget {
  const Work({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> work = [
      {
        "place": "RR Ispat",
        "description": "Working as a Graduate Trainee: Software Engineer.",
        "year": "Oct 2023 - Present",
      },
      {
        "place": "Nava Raipur development Authority",
        "description": "Worked as an IT Intern for six months.",
        "year": "Feb 2023 - Aug 2023",
      },
      {
        "place": "Two Waits Technologies",
        "description": "Worked as a designer.",
        "year": "June 2022 - July 2022",
      },
    ];

    final List<Map<String, dynamic>> education = [
      {
        "place": "Bhilai Institute of Technology",
        "description": "B.Tech in CSE",
        "duration": "2019-2023",
      },
      {
        "place": "Chattisgarh Public School",
        "description": "Class XII, Science",
        "duration": "2018-2019",
      },
      {
        "place": "Bhilai Institute of Technology",
        "description": "Class X",
        "duration": "2017-2018",
      },
    ];

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

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Text(
            "Where I'have worked",
            style: textStyle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
                minHeight: 400, maxHeight: 400, minWidth: 600, maxWidth: 1000),
            child: ListView.builder(
              itemCount: work.length,
              itemBuilder: (context, index) {
                final experience = work[index];
                return Card(
                  color: const Color(0xff0a192f),
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text(experience['place'], style: nameStyle),
                    subtitle: Text(experience['description'],
                        style: nameStyle.copyWith(fontSize: 20)),
                    trailing: Text(experience['year'],
                        style: nameStyle.copyWith(fontSize: 20)),
                  ),
                );
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Text(
            "Education",
            style: textStyle,
          ),
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(
              minHeight: 400, maxHeight: 400, minWidth: 600, maxWidth: 1000),
          child: ListView.builder(
              itemCount: education.length,
              itemBuilder: (context, index) {
                final edu = education[index];
                return Card(
                  color: const Color(0xff0a192f),
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text(edu['place'], style: nameStyle),
                    subtitle: Text(edu['description'],
                        style: nameStyle.copyWith(fontSize: 20)),
                    trailing: Text(edu['duration'],
                        style: nameStyle.copyWith(fontSize: 20)),
                  ),
                );
              }),
        )
      ],
    );
  }
}
