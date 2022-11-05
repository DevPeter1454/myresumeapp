import 'package:flutter/material.dart';

class ExperienceTileWidget extends StatelessWidget {
  final Color color;
  final String label;
  final String timeFrame;
  final String? place;
  final IconData icon;
  const ExperienceTileWidget(
      {Key? key,
      required this.color,
      required this.label,
      required this.timeFrame,
      this.place,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color(0XFF1A1A1A),
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 20,
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
              child: const Icon(
                Icons.work,
                size: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(label,
                      style:
                          const TextStyle(fontSize: 16, color: Colors.white)),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        timeFrame,
                        style:
                            const TextStyle(fontSize: 12, color: Colors.white),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '-',
                        style:
                            const TextStyle(fontSize: 12, color: Colors.white),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        place!,
                        style:
                            const TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ],
                  ),
                ]),
          ]),
    );
  }
}
