import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/about/view/about_view.dart';
import 'package:portfolio/contact/view/contact_view.dart';
import 'package:portfolio/home/view/landscape.dart';
import 'package:portfolio/home/view/portrait_view.dart';
import 'package:flutter/services.dart';

class HomeView extends StatefulWidget {
  static const String routeName = '/home';
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  port() {
    // print('port');
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  defaultScreen() {
    SystemChrome.setPreferredOrientations(DeviceOrientation.values);
  }

  land() {
    // print('land');
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // defaultScreen();
  }

  @override
  Widget build(BuildContext context) {
    void changeOrientation() {
      print('here');
      print(MediaQuery.of(context).size.width);
      MediaQuery.of(context).orientation == Orientation.portrait
          ? land()
          : port();
    }

    return Scaffold(body: SingleChildScrollView(
        child: OrientationBuilder(builder: (context, orientation) {
      return MediaQuery.of(context).orientation == Orientation.portrait &&
              MediaQuery.of(context).size.width < 500
          ? PortHome(
              changeOrientation: changeOrientation,
            )
          : LandscapeHome(changeOrientation: changeOrientation);
    })));
  }
}
