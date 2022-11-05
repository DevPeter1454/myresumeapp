import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  final VoidCallback ontap;
  final bool isSelected;
  final IconData icon;
  final String label;
  const TabWidget(
      {Key? key,
      required this.ontap,
      required this.isSelected,
      required this.icon,
      required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
                          width: MediaQuery.of(context).size.width / 4,
                          height: 90,
                          decoration: BoxDecoration(
                            color:  isSelected
                                ? const Color(0XFF1A1A1A)
                                : null,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:  [
                              Icon(
                                icon,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                               label,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          )),
    );
  }
}
