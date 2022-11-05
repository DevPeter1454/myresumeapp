import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/about/view/about_view.dart';
import 'package:portfolio/contact/view/contact_view.dart';

class PortHome extends StatelessWidget {
  final VoidCallback changeOrientation;
  const PortHome({Key? key, required this.changeOrientation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
        ),
        ColorFiltered(
          colorFilter: ColorFilter.mode(
              Colors.black12.withOpacity(0.6), BlendMode.srcOver),
          child: Image.asset(
            'assets/images/blackpic.png',
            fit: BoxFit.fitHeight,
            height: MediaQuery.of(context).size.height,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 1.85,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            color: Colors.black.withOpacity(0.5),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hi, I\'m',
                      style: GoogleFonts.acme(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w500)),
                  Text('Peter !',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 40)),
                  const Text('Mobile Developer',
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          width: 150,
                          height: 90,
                          decoration: const BoxDecoration(
                            color: Color(0XFF1A1A1A),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0XFF313131),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, AboutView.routeName);
                                  },
                                  icon: const Icon(
                                    Icons.arrow_back_ios,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const Text('About \n     Me',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white)),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          width: 150,
                          height: 90,
                          decoration: const BoxDecoration(
                            color: Color(0XFF1A1A1A),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text('Projects & \nContact',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white)),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0XFF313131),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, ContactView.routeName);
                                  },
                                  icon: const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
            top: 20,
            right: 10,
            child: IconButton(
              tooltip: 'Change Device Orientation',
              onPressed: changeOrientation,
              icon: const Icon(
                Icons.refresh,
                size: 25,
                color: Colors.white,
              ),
            )),
      ],
    );
  }
}
