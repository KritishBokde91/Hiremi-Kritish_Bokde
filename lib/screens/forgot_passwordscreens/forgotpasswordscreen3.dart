import 'package:flutter/material.dart';
import 'package:hiremi/screens/homescreens/homescreen.dart';

class Forgotpasswordscreen3 extends StatefulWidget {
  const Forgotpasswordscreen3({super.key});

  @override
  State<Forgotpasswordscreen3> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<Forgotpasswordscreen3> {
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool isNewPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

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
                const SizedBox(height: 40),
                const Text(
                  'Create new Password',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                // Illustration Image
                Image.asset(
                  'assets/images/forgotpassword3.png',
                  height: 200,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 40),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'New Password*',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: newPasswordController,
                  obscureText: !isNewPasswordVisible,
                  decoration: InputDecoration(
                    hintText: 'Enter New Password',
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Color(0xFF003DD1),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isNewPasswordVisible = !isNewPasswordVisible;
                        });
                      },
                      child: Icon(
                        isNewPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
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
                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Confirm New Password*',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: confirmPasswordController,
                  obscureText: !isConfirmPasswordVisible,
                  decoration: InputDecoration(
                    hintText: 'Re-enter New Password',
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Color(0xFF003DD1),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isConfirmPasswordVisible = !isConfirmPasswordVisible;
                        });
                      },
                      child: Icon(
                        isConfirmPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
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
                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Min 8 characters, 1 upper case, 1 digit, 1 special character',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
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
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Homescreen(),
                  ));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF003DD1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(vertical: 15),
            ),
            child: const Text(
              'Reset Password',
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
