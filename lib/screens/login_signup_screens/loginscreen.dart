import 'package:flutter/material.dart';
import 'package:hiremi/controllerscreen.dart';
import 'package:hiremi/screens/login_signup_screens/signupscreen.dart';
import 'package:hiremi/widgets/edittextfield.dart';

import '../forgot_passwordscreens/forgotpasswordscreen1.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 50,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Login Here',
              style: TextStyle(fontSize: 30, color: Color(0xFF0F3CC9)),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Welcome back you've\n",
                    style: TextStyle(
                      color: Color(0xFF555555),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  TextSpan(
                    text: 'been missed!',
                    style: TextStyle(
                      color: Color(0xFF555555),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            EditTextField(
              textInputType: TextInputType.text,
              label: 'Email',
              textEditingController: emailController,
              isHidden: false,
            ),
            EditTextField(
              textInputType: TextInputType.text,
              label: 'Password',
              textEditingController: passwordController,
              isHidden: true,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Forgotpasswordscreen1(),));
                  },
                  child: const Text('Forgot Password'),
                ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(size.width - 70, 70),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13)),
                    backgroundColor: const Color(0xFF0F3CC9)),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Controllerscreen(),));
                },
                child: const Text(
                  'Sign in',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(size.width - 70, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13)),
                    backgroundColor: Colors.white),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Signupscreen(),));
                },
                child: const Text(
                  'Create new account',
                  style: TextStyle(color: Color(0xFF494949), fontSize: 20),
                )),
          ],
        ),
      )),
    );
  }
}
