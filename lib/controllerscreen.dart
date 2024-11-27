import 'package:flutter/material.dart';
import 'package:hiremi/screens/homescreens/askexpertscreen.dart';
import 'package:hiremi/screens/homescreens/hiremi360screen.dart';
import 'package:hiremi/screens/homescreens/homescreen.dart';
import 'package:hiremi/screens/homescreens/jobscreen.dart';
import 'package:hiremi/screens/homescreens/statusscreen.dart';
import 'package:hiremi/widgets/custombottombar.dart';

class Controllerscreen extends StatefulWidget {
  const Controllerscreen({super.key});

  @override
  State<Controllerscreen> createState() => _ControllerscreenState();
}

class _ControllerscreenState extends State<Controllerscreen> {
  int currentIndex = 0;
  void _onTabSelected(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      const Homescreen(),
      const Jobscreen(),
      const Askexpertscreen(),
      const Statusscreen(),
      const Hiremi360screen()
    ];
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Custombottombar(
        currentIndex: currentIndex,
        onTabSelected: _onTabSelected,
      ),
    );
  }
}
