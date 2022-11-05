import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:portfolio/about/view/about_view.dart';
import 'package:portfolio/contact/view/contact_view.dart';
import 'package:portfolio/home/view/home_view.dart';

class GenerateRoute {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeView.routeName:
        return PageTransition(
            type: PageTransitionType.bottomToTop, child: const HomeView());
      case AboutView.routeName:
        return PageTransition(
            type: PageTransitionType.leftToRight, child: const AboutView());
      case ContactView.routeName:
        return PageTransition(
            type: PageTransitionType.rightToLeft, child: const ContactView());
      default:
        return PageTransition(
            type: PageTransitionType.leftToRight,
            child: const Scaffold(
              body: Center(
                child: Text('Error'),
              ),
            ));
    }
  }
}
