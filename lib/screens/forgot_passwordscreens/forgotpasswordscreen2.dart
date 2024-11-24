import 'package:flutter/material.dart';
import 'package:hiremi/screens/forgot_passwordscreens/forgotpasswordscreen3.dart';

class Forgotpasswordscreen2 extends StatelessWidget {
  final TextEditingController otpController = TextEditingController();

  Forgotpasswordscreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo.png'),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Verify your Email address',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                Image.asset(
                  'assets/images/forgotpassword2.png',
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 40),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Enter One Time Password*',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'PoppinsRegular',
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: otpController,
                  keyboardType: TextInputType.number,
                  maxLength: 6,
                  decoration: InputDecoration(
                    hintText: 'Enter OTP',
                    counterText: '',
                    prefixIcon: const Icon(
                      Icons.key,
                      color: Color(0xFF003DD1),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                RichText(
                  text: const TextSpan(
                    text: 'Please, Enter your ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    children: [
                      TextSpan(
                        text: 'six digit ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'code that you have received in your mail box. ',
                      ),
                      TextSpan(
                        text: 'Resend OTP',
                        style: TextStyle(
                          color: Color(0xFF003DD1),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Forgotpasswordscreen3(),));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF003DD1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(vertical: 15),
            ),
            child: const Text(
              'Confirm',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
