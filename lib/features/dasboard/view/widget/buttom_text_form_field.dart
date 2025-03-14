import 'package:flutter/material.dart';

class ButtomTextFormField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool enabled;

  const ButtomTextFormField({
    super.key,
    required this.label,
    required this.controller,
    required this.enabled,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      enabled: enabled,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.grey[100],
      ),
    );
  }
}
