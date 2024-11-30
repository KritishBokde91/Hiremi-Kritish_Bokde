import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class Otpverification extends StatelessWidget {
  const Otpverification({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 60,
      height: 60,
      textStyle: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP Verification'),
        backgroundColor: const Color(0xFF0F3CC9),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image at the top
              Image.asset(
                'assets/images/verification.png',
                height: 150,
              ),
              const SizedBox(height: 20),
              // OTP Verification Text
              const Text(
                'OTP Verification',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              // Instruction Text
              const Text(
                'Enter the verification code we have sent to your e-mail',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 30),
              // OTP Input Fields using Pinput
              Pinput(
                length: 4,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: defaultPinTheme.copyWith(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                  ),
                ),
                submittedPinTheme: defaultPinTheme.copyWith(
                  decoration: defaultPinTheme.decoration!.copyWith(
                    color: Colors.blue.shade50,
                  ),
                ),
                showCursor: true,
                onCompleted: (pin) {
                  // Add your logic here
                  print("Entered OTP: $pin");
                  Navigator.pop(context); // Navigate back or forward based on logic
                },
              ),
              const SizedBox(height: 30),
              // Verify OTP Button
              ElevatedButton(
                onPressed: () {
                  // Add your verification logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0F3CC9),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Verify OTP',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
