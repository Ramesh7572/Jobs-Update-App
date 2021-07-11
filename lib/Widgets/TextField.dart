import 'package:flutter/material.dart';

class CustomTextFields extends StatelessWidget {
  final String value;
  final bool obscure;
  const CustomTextFields(this.value, this.obscure);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30.0),
        Text(value),
        TextField(
          obscureText: obscure,
        ),
      ],
    );
  }
}
