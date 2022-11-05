import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';

class ContactWidget extends StatelessWidget {
  final VoidCallback launchEmail;
  final VoidCallback launchGithub;
  final VoidCallback launchLinkedIn;
  final VoidCallback launchTwitter;
  const ContactWidget(
      {Key? key,
      required this.launchEmail,
      required this.launchGithub,
      required this.launchLinkedIn,
      required this.launchTwitter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Column(
        children: [
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color(0XFF1A1A1A),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "Want to work together? Feel free to reach out for collaborations or just a friendly hello.",
                      style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 1.5,
                          color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: launchLinkedIn,
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 40),
                      backgroundColor: const Color(0XFF353434)),
                  child: const Text('Contact Me'),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TwitterAuthButton(
                onPressed: launchTwitter,
                style: const AuthButtonStyle(
                  iconSize: 20,
                  buttonType: AuthButtonType.icon,
                ),
              ),
              GithubAuthButton(
                onPressed: launchGithub,
                style: const AuthButtonStyle(
                  iconSize: 20,
                  buttonType: AuthButtonType.icon,
                ),
              ),
              GoogleAuthButton(
                onPressed: launchEmail,
                style: const AuthButtonStyle(
                  iconSize: 20,
                  buttonType: AuthButtonType.icon,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
