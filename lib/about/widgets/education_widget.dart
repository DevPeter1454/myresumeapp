import 'package:flutter/material.dart';
import 'package:portfolio/about/widgets/tile_widget.dart';

class EducationWidget extends StatelessWidget {
  const EducationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      ExperienceTileWidget(
          color: Colors.deepPurpleAccent,
          label: 'Bachelor of Computer Science',
          timeFrame: '2021 - present',
          icon: Icons.school,
          place: 'University'),
      SizedBox(
        height: 20,
      ),
      ExperienceTileWidget(
          color: Colors.deepOrangeAccent,
          label: 'High School Diploma',
          timeFrame: '2014 - 2020 ',
          icon: Icons.school,
          place: 'High School'),
    ]);
  }
}
