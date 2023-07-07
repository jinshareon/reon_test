import 'package:flutter/material.dart';

class textfont extends StatelessWidget {
  final text;
  const textfont({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,style: TextStyle(color: Colors.white),
    );
  }
}
