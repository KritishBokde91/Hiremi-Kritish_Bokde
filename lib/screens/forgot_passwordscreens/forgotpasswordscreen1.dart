import 'package:flutter/material.dart';
import 'package:hiremi/screens/forgot_passwordscreens/forgotpasswordscreen2.dart';
import 'package:hiremi/widgets/forgottextfield.dart';

class Forgotpasswordscreen1 extends StatelessWidget {
  const Forgotpasswordscreen1({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Column(
        children: [
          Image.asset('assets/images/logo.png'),
          const SizedBox(
            height: 30,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Forget Your Password,\n',
                  style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'PoppinsMedium'),
                ),
                TextSpan(
                  text: 'No worries, it happens!',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontFamily: 'PoppinsRegular'),
                ),
              ],
            ),
          ),
          Image.asset('assets/images/forgotpassword1.png'),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Enter Email Address*',
            style: TextStyle(fontSize: 16, fontFamily: 'PoppinsRegular'),
          ),
          Forgottextfield(
              controller: emailController,
              textInputType: TextInputType.text,
              icon: Icons.person,
              label: 'youremail@gmail.com'),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Enter your email address to receive a verification code in your mail box',
              style: TextStyle(fontSize: 12, fontFamily: 'PoppinsRegular',),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    )),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Forgotpasswordscreen2(),));
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
