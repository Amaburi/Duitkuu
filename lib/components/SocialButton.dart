import 'package:flutter/material.dart';
class SocialButton extends StatelessWidget {
  final String imageUrl;
  final EdgeInsets padding;

  const SocialButton({required this.imageUrl, required this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      padding: padding,
      decoration: ShapeDecoration(
        color: Color(0xFFEBEBEB),
        shape: RoundedRectangleBorder(
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
      child: Image.asset(imageUrl, fit: BoxFit.contain),
    );
  }
}
