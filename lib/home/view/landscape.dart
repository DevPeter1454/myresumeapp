import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../about/view/about_view.dart';
import '../../contact/view/contact_view.dart';

class LandscapeHome extends StatelessWidget {
  final VoidCallback changeOrientation;
  const LandscapeHome({Key? key, required this.changeOrientation})
      : super(key: key);

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
            fit: BoxFit.fitWidth,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width / 2.2,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 4.2,
          left: MediaQuery.of(context).size.width / 2.2,
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
                  Text('Hi, I\'m Peter !',
                      style: GoogleFonts.acme(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w500)),
                  const Text('Mobile Developer',
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
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
                                  icon: const  Icon(
                                        Icons.arrow_back_ios,
                                        size: 15,
                                      ),
                                    
                                )),
                            const Text('About \n     Me',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white)),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.001,
                      ),
                      Container(
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
                                  icon: const  Icon(
                                        Icons.arrow_forward_ios,
                                        size: 15,
                                      ),
                                
                                )),
                          ],
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
