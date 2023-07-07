import 'package:flutter/material.dart';
import 'package:frontpage/model/model.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class FirstScreenController {
  final pickingimage model;
  final VoidCallback onUpdate;

  FirstScreenController({
    required this.model,
    required this.onUpdate,
  });

  void pickImageFromGallery() async {
    final pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
    

    if (pickedImage != null) {
      model.selectedImage = File(pickedImage.path);
      onUpdate();
    }
  }

  
}
