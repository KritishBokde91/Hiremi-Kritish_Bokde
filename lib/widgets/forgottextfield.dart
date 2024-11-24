import 'package:flutter/material.dart';

class Forgottextfield extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType textInputType;
  final IconData icon;
  final bool isHidden;
  final String label;
  const Forgottextfield(
      {super.key,
      required this.controller,
      required this.textInputType,
      this.isHidden = false,
      required this.icon,
      required this.label});

  @override
  State<Forgottextfield> createState() => _ForgottextfieldState();
}

class _ForgottextfieldState extends State<Forgottextfield> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        controller: widget.controller,
        keyboardType: widget.textInputType,
        obscureText: widget.isHidden,
        decoration: InputDecoration(
            label: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(widget.label),
            ),
            alignLabelWithHint: true,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            suffixIcon: widget.isHidden
                ? GestureDetector(
                    onTap: () {
                      isVisible = !isVisible;
                    },
                    child:
                        Icon(isVisible ? Icons.visibility : Icons.visibility_off),
                  )
                : null,
            prefixIcon: Container(
              decoration: const BoxDecoration(
                  border: Border(
                right: BorderSide(color: Colors.grey, width: 0.7),
              )),
              child: const Icon(
                Icons.person,
                color: Color(0xFF003DD1),
              ),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: const BorderSide(color: Colors.grey, width: 0.7))),
      ),
    );
  }
}
