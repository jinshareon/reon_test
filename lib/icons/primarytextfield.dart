import 'package:flutter/material.dart';

class customTextfield extends StatefulWidget {
  final TextEditingController controller;

  customTextfield({super.key,required this.controller});

  @override
  State<customTextfield> createState() => _customTextfieldState();
}

class _customTextfieldState extends State<customTextfield>  {
  @override
  Widget build(BuildContext context) {
    return TextField(controller: widget.controller,
      decoration: const InputDecoration( 
          fillColor: Colors.white,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
          )),
    );
  }
}
