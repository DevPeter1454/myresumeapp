import 'package:flutter/material.dart';
import 'package:portfolio/about/widgets/skills_widget.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color(0XFF1A1A1A),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  "I am a FullStack Mobile Developer and a Backend Web Developer. I'm proficient in HTML,CSS, Bootstrap, GIT, JavaScript, Node Js, Express, MongoDB, Flutter and Dart. I'm also a Tech Enthusiast.",
                  style: TextStyle(
                      fontSize: 16, letterSpacing: 1.5, color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SkillsWidget()
        ],
      ),
    );
  }
}
