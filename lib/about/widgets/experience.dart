import 'package:flutter/material.dart';
import 'package:portfolio/about/widgets/tile_widget.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      ExperienceTileWidget(
          color: Colors.purple,
          label: 'Student Developer',
          timeFrame: '2020 - 2022',
          icon: Icons.work,
          place: 'SQI'),
      SizedBox(
        height: 20,
      ),
      ExperienceTileWidget(
          color: Colors.cyan,
          label: 'Mobile Dev Intern',
          timeFrame: '2022 - present',
          icon: Icons.work,
          place: 'HNG'),
    ]);
  }
}
