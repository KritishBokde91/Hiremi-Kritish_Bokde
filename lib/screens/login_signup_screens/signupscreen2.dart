import 'package:flutter/material.dart';
import 'package:hiremi/widgets/customtextfield.dart';

class Signupscreen2 extends StatelessWidget {
  const Signupscreen2({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            CustomTextField(
              label: 'Email Address*',
              hint: 'JohnDoe@gmail.com',
              controller: emailController,
              isAuthentication: true,
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0F3CC9),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13)),
                ),
                child: const Text('Verify Now', style: TextStyle(color: Colors.white, fontSize: 16),),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              label: 'Phone Number*',
              hint: '+91',
              controller: phoneController,
              isAuthentication: true,
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
