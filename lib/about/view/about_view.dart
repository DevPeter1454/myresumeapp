import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/about/widgets/about_widget.dart';
import 'package:portfolio/about/widgets/education_widget.dart';
import 'package:portfolio/about/widgets/experience.dart';
import 'package:portfolio/about/widgets/tab_widget.dart';

class AboutView extends StatefulWidget {
  static const String routeName = '/about';
  const AboutView({Key? key}) : super(key: key);

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  int currentIndex = 0;
  final List<IconData> icons = [
    Icons.person,
    Icons.work,
    Icons.school,
  ];

  final List<String> labels = [
    'About',
    'Experience',
    'Education',
  ];

  final List<Widget> tabs = [
    const AboutWidget(),
    const ExperienceWidget(),
    const EducationWidget(),
  ];

  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).orientation == Orientation.portrait
                ? MediaQuery.of(context).size.height * 1.5
                : MediaQuery.of(context).size.height * 2,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.close,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                      DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 20.0,
                        ),
                        child: AnimatedTextKit(
                          totalRepeatCount: 1,
                          // pause: Duration(seconds: 3),
                          animatedTexts: [
                            TyperAnimatedText('About Me',
                                textStyle:
                                    const TextStyle(color: Colors.white)),
                          ],
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ListView.builder(
                            shrinkWrap: true,
                            controller: _scrollController,
                            scrollDirection: Axis.horizontal,
                            itemCount: icons.length,
                            itemBuilder: (context, index) {
                              var isSelected = currentIndex == index;
                              return TabWidget(
                                ontap: () {
                                  setState(() {
                                    currentIndex = index;
                                  });
                                },
                                isSelected: isSelected,
                                icon: icons[index],
                                label: labels[index],
                              );
                            }),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  tabs[currentIndex],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
