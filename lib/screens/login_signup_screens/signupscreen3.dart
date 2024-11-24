import 'package:flutter/material.dart';
import 'package:hiremi/widgets/customtextfield.dart';

class Signupscreen3 extends StatelessWidget {
  const Signupscreen3({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController collegeNameController = TextEditingController();
    TextEditingController collegeStateController = TextEditingController();
    TextEditingController branchController = TextEditingController();
    TextEditingController degreeController = TextEditingController();
    TextEditingController passedYearController = TextEditingController();
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CustomTextField(label: 'College Name*', hint: 'College Name', controller: collegeNameController),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(label: 'College State*', hint: 'College State', controller: collegeStateController),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(label: 'Branch*', hint: 'Select Branch', controller: branchController),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(label: 'Degree*', hint: 'Select Course', controller: degreeController),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(label: 'Passout Year*', hint: 'Select Year', controller: passedYearController),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
