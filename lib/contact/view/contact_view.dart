import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/about/widgets/tab_widget.dart';
import 'package:portfolio/contact/widgets/contact_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactView extends StatefulWidget {
  static const String routeName = '/contact';
  const ContactView({Key? key}) : super(key: key);

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  int currentIndex = 0;
  final List<IconData> icons = [
    Icons.work,
    Icons.contact_page,
  ];

  final Uri _twitterUrl = Uri.parse('https://twitter.com/_DevPeter');
  Future<void> _launchTwitterUrl() async {
    if (!await launchUrl(_twitterUrl, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $_twitterUrl';
    }
  }

  final Uri _linkedInUrl =
      Uri.parse('https://www.linkedin.com/in/ojo-peter-4b40421bb/');
  Future<void> _launchLinkedInUrl() async {
    if (!await launchUrl(_linkedInUrl, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $_linkedInUrl';
    }
  }

  final Uri _emailUri = Uri(
      scheme: 'mailto',
      path: 'ojopeter36@gmail.com',
      query: 'subject=Hello%20there');

  final Uri _githubUrl = Uri.parse('https://github.com/devpeter1454');
  Future<void> _launchGithubUrl() async {
    if (!await launchUrl(_githubUrl, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $_githubUrl';
    }
  }

  final List<String> labels = [
    'Projects',
    'Contact Me',
  ];

  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgets = [
      GithubAuthButton(
        text: 'View my projects on Github',
        onPressed: () {
          _launchGithubUrl();
        },
        style: const AuthButtonStyle(
          iconType: AuthIconType.secondary,
          buttonType: AuthButtonType.secondary,
          margin: EdgeInsets.all(10),
        ),
      ),
      ContactWidget(launchEmail: () {
        launchUrl(_emailUri);
      }, launchGithub: () {
        _launchGithubUrl();
      }, launchLinkedIn: () {
        _launchLinkedInUrl();
      }, launchTwitter: () {
        _launchTwitterUrl();
      }),
    ];
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Container(
          height: MediaQuery.of(context).size.height * 1.5,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
               IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const  Icon(
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
                      TyperAnimatedText('Projects & Contact',
                          textStyle: const TextStyle(color: Colors.white)),
                    ],
                    onTap: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).orientation == Orientation.portrait
                  ? 100
                  : 80,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      controller: _controller,
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
            widgets[currentIndex],
          ])),
    )));
  }
}
