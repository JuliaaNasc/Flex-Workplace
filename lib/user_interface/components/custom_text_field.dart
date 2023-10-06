// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField ({
    required this.hint,
    required this.controller,
    super.key,
  });

  String hint;
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.white),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          fillColor: Colors.green,
          filled: true,
          isDense: true,
        ),
      ),
    );
  }
}
