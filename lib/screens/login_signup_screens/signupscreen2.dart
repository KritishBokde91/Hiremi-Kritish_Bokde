import 'package:flutter/material.dart';
import 'package:hiremi/screens/login_signup_screens/otpverification.dart';
import 'package:hiremi/widgets/customtextfield.dart';

class Signupscreen2 extends StatefulWidget {
  const Signupscreen2({super.key});

  @override
  State<Signupscreen2> createState() => _Signupscreen2State();
}

class _Signupscreen2State extends State<Signupscreen2> {
  bool isTap = false;
  String text = '';
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
            Visibility(
              visible: !isTap,
              child: Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {
                    isTap = true;
                    text = emailController.text;
                    setState(() {

                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Otpverification(),));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0F3CC9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13)),
                  ),
                  child: const Text('Verify Now', style: TextStyle(color: Colors.white, fontSize: 16),),
                ),
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
