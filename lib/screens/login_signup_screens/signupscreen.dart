import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:hiremi/controllerscreen.dart';
import 'package:hiremi/screens/login_signup_screens/signupscreen1.dart';
import 'package:hiremi/screens/login_signup_screens/signupscreen2.dart';
import 'package:hiremi/screens/login_signup_screens/signupscreen3.dart';
import 'package:hiremi/screens/login_signup_screens/signupscreen4.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _Signupscreen1State();
}

class _Signupscreen1State extends State<Signupscreen> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Center(
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                      color: Color(0xFF0F3CC9),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: Text(
                    currentStep == 0
                        ? 'Personal Information'
                        : (currentStep == 1
                            ? 'Contact Information'
                            : (currentStep == 2
                                ? 'Education Information'
                                : 'Set your Password')),
                    style: const TextStyle(
                      color: Color(0xFF555555),
                      fontSize: 22,
                      fontFamily: 'PoppinsMedium',
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                EasyStepper(
                  activeStep: currentStep,
                  lineStyle: const LineStyle(
                    lineLength: 40,
                    lineType: LineType.normal,
                    finishedLineColor: Color(0xFF0472E3),
                    unreachedLineColor: Color(0xFF0174C8),
                    lineSpace: 0,
                    lineWidth: 270,
                    activeLineColor: Color(0xFF0174C8),
                    lineThickness: 3,
                  ),
                  stepShape: StepShape.circle,
                  stepBorderRadius: 15,
                  stepRadius: 20,
                  stepAnimationDuration: const Duration(seconds: 5),
                  steppingEnabled: true,
                  stepAnimationCurve: Curves.easeIn,
                  finishedStepBorderColor: const Color(0xFF0F3CC9),
                  finishedStepBackgroundColor: const Color(0xFF002496),
                  activeStepBorderColor: const Color(0xFF0F3CC9),
                  activeStepBackgroundColor: const Color(0xFF0F3CC9),
                  unreachedStepBorderColor: Colors.grey[600]!,
                  unreachedStepBackgroundColor: Colors.grey[300]!,
                  unreachedStepBorderType: BorderType.normal,
                  unreachedStepIconColor: const Color(0xFF002496),
                  borderThickness: 4,
                  steps: const [
                    EasyStep(
                        icon: Icon(Icons.check, color: Colors.white),
                        finishIcon: Icon(Icons.check, color: Colors.white)),
                    EasyStep(
                        icon: Icon(Icons.circle_outlined),
                        finishIcon: Icon(Icons.check, color: Colors.white)),
                    EasyStep(
                        icon: Icon(Icons.circle_outlined),
                        finishIcon: Icon(Icons.check, color: Colors.white)),
                    EasyStep(
                        icon: Icon(Icons.circle_outlined),
                        finishIcon: Icon(Icons.check, color: Colors.white)),
                  ],
                ),
                currentStep == 0
                    ? const Signupscreen1()
                    : (currentStep == 1
                        ? const Signupscreen2()
                        : (currentStep == 2
                            ? const Signupscreen3()
                            : const Signupscreen4())),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          if (currentStep < 1) {
                            Navigator.pop(context);
                          } else {
                            currentStep--;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 10,
                        ),
                      ),
                      child: const Text(
                        'Back',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF555555),
                            fontFamily: 'PoppinsMedium'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (currentStep == 0) {
                              currentStep++;
                            } else if (currentStep == 1) {
                              currentStep++;
                            } else if (currentStep == 2) {
                              currentStep++;
                            } else if (currentStep == 3) {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Controllerscreen(),));
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0F3CC9),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13)),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 10,
                          ),
                        ),
                        child: Text( currentStep == 3 ? 'Submit' :
                          'Proceed',
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
