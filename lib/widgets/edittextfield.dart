import 'package:flutter/material.dart';

class EditTextField extends StatelessWidget {
  final TextInputType textInputType;
  final String label;
  final TextEditingController textEditingController;
  final bool isHidden;

  const EditTextField({
    super.key,
    required this.textInputType,
    required this.label,
    required this.textEditingController,
    required this.isHidden,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 20.0),
      child: TextField(
        controller: textEditingController,
        obscureText: isHidden,
        autofocus: false,
        keyboardType: textInputType,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelText: label,
          labelStyle: const TextStyle(color: Color(0xFF0F3CC9)),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: const BorderSide(color: Color(0xFF626262), width: 1.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: const BorderSide(color: Color(0xFF0F3CC9), width: 1.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: const BorderSide(color: Color(0xFF0F3CC9), width: 2.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: const BorderSide(color: Color(0xFF626262)),
          ),
        ),
      ),
    );
  }
}
