import 'package:flutter/material.dart';
class CustomInputField extends StatelessWidget {
  final String label;
  final IconData icon;
  final double width;
  final bool obscureText;
  final TextEditingController controller;

  const CustomInputField({
    required this.label,
    required this.icon,
    required this.width,
    this.obscureText = false,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextField(
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Color(0xFF616161)),
          labelText: label,
          labelStyle: TextStyle(
            color: Color(0xFF616161),
            fontSize: 16,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
          filled: true,
          fillColor: Color(0xFFF1F4FF),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2, color: Color(0xFF5774CD)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2, color: Color(0xFF5774CD)),
          ),
        ),
      ),
    );
  }
}