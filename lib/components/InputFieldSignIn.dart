import 'package:flutter/material.dart';
class InputField extends StatelessWidget {
  final String label;
  final IconData icon;
  final double width;
  final TextEditingController controller;
  final bool isPassword;

  const InputField({
    required this.label,
    required this.icon,
    required this.width,
    required this.controller,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: ShapeDecoration(
        color: Color(0xFFF1F4FF),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 2, color: Color(0xFF5774CD)),
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: Color(0xFF616161)),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              controller: controller,
              obscureText: isPassword,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: label,
                labelStyle: TextStyle(
                  color: Color(0xFF616161),
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}