import 'package:flutter/material.dart';

class RateWidget extends StatelessWidget {
  final String label;
  final int currentStep;
  final Color color;
  const RateWidget(
      {Key? key,
      required this.label,
      required this.currentStep,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: const TextStyle(fontSize: 12, color: Colors.white),
            ),
            Text('$currentStep%',
                style: const TextStyle(fontSize: 12, color: Colors.white)),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        LinearProgressIndicator(
          value: currentStep / 100,
          backgroundColor: Colors.grey[100],
          valueColor: AlwaysStoppedAnimation<Color>(color),
        ),
      ],
    );
  }
}
