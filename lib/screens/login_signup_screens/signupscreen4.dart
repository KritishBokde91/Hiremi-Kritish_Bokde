import 'package:flutter/material.dart';
import 'package:hiremi/widgets/customtextfield.dart';

class Signupscreen4 extends StatelessWidget {
  const Signupscreen4({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController passwordController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          CustomTextField(
            label: 'Password*',
            hint: '********',
            controller: passwordController,
            isHidden: true,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            label: 'Confirm Password*',
            hint: '********',
            controller: passwordController,
            isHidden: true,
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
