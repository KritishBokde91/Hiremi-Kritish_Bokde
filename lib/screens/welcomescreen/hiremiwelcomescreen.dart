
import 'package:flutter/material.dart';

class HiremiWelcomeScreen extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final Color materialColor;

  const HiremiWelcomeScreen({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.materialColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '${title.split(',')[0]},\n',
                          style: const TextStyle(
                            color: Color(0xFF0174C8),
                            fontSize: 22,
                          ),
                        ),
                        TextSpan(
                          text: title.split(',')[1],
                          style: TextStyle(
                            color: materialColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Image.asset(
                  imagePath,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                subtitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
