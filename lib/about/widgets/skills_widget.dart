import 'package:flutter/material.dart';
import 'package:portfolio/about/widgets/rate_widget.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(MediaQuery.of(context).orientation);
      },
      child: Container(
        height: MediaQuery.of(context).orientation == Orientation.portrait ||
                MediaQuery.of(context).size.width < 600
            ? MediaQuery.of(context).size.height * 0.55
            : MediaQuery.of(context).size.height * 0.90,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            color: Color(0XFF1A1A1A),
            borderRadius: BorderRadius.all(Radius.circular(24))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Skills',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.7, color: Colors.white),
                ),
              ),
              SizedBox(height: 10),
              RateWidget(
                label: 'Dart',
                currentStep: 95,
                color: Colors.purple,
              ),
              SizedBox(height: 10),
              RateWidget(
                label: 'Flutter',
                currentStep: 90,
                color: Colors.cyan,
              ),
              SizedBox(height: 10),
              RateWidget(
                  label: 'Javascript', currentStep: 90, color: Colors.yellow),
              SizedBox(height: 10),
              RateWidget(label: 'HTML', currentStep: 92, color: Colors.red),
              SizedBox(height: 10),
              RateWidget(label: 'CSS', currentStep: 86, color: Colors.blue),
              SizedBox(height: 10),
              RateWidget(
                  label: 'GIT', currentStep: 87, color: Colors.deepOrange),
              SizedBox(height: 10),
              RateWidget(
                  label: 'Node JS', currentStep: 80, color: Colors.yellow),
            ],
          ),
        ),
      ),
    );
  }
}
