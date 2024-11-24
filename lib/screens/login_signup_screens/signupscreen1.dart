import 'package:flutter/material.dart';
import 'package:hiremi/widgets/customtextfield.dart';

class Signupscreen1 extends StatefulWidget {
  const Signupscreen1({super.key});

  @override
  State<Signupscreen1> createState() => _Signupscreen1State();
}

class _Signupscreen1State extends State<Signupscreen1> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController fathersNameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController birthPlaceController = TextEditingController();
  String? selectedGender;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
              hint: 'John Doe',
              label: 'Full Name*',
              controller: fullNameController),
          const SizedBox(height: 15),
          CustomTextField(
              hint: 'John Doe Sr.',
              label: 'Father\'s Full Name*',
              controller: fathersNameController),
          const SizedBox(height: 15),
          const Text(
            'Gender*',
            style: TextStyle(
              color: Color(0xFF555555),
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              _buildGenderOption('Male'),
              const SizedBox(width: 10),
              _buildGenderOption('Female'),
              const SizedBox(width: 10),
              _buildGenderOption('Other'),
            ],
          ),
          const SizedBox(height: 15),
          CustomTextField(
              hint: 'DD/MM/YYYY',
              label: 'Date of Birth*',
              isDatePicker: true,
              controller: dobController),
          const SizedBox(height: 15),
          CustomTextField(
              hint: 'Select State',
              label: 'Birth Place*',
              controller: birthPlaceController),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _buildGenderOption(String label) {
    final bool isSelected = selectedGender == label;

    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedGender = label; // Update selected gender
          });
        },
        child: Container(
          height: 45,
          decoration: BoxDecoration(
            border: Border.all(
              color: isSelected
                  ? const Color(0xFF0F3CC9)
                  : const Color(0xFFB6B6B6),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(13),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                isSelected ? Icons.circle : Icons.circle_outlined,
                color: isSelected ? const Color(0xFF0F3CC9) : Colors.grey,
              ),
              const SizedBox(width: 8),
              Text(label),
            ],
          ),
        ),
      ),
    );
  }
}
