import 'package:flutter/material.dart';

class Stepperdate extends StatelessWidget {
  final String label1;
  final String label2;
  final String iconText;
  const Stepperdate(
      {super.key,
      required this.label1,
      required this.label2,
      required this.iconText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
              color: const Color(0xFF002496),
              borderRadius: BorderRadius.circular(14)),
          child: Text(
            iconText,
            style: const TextStyle(color: Colors.white, fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: '$label1\n',
                style: const TextStyle(fontSize: 10),
                children: [TextSpan(text: label2)]))
      ],
    );
  }
}
