import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:frontpage/controller/imageselection.dart';
import 'package:frontpage/model/model.dart';
import 'package:frontpage/view/firstscreen.dart';

void main()  {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late pickingimage _model;
  late FirstScreenController _controller;

  @override
  void initState() {
    _model = pickingimage();
    _controller = FirstScreenController(
      model: _model,
      onUpdate: () {
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 667),
        builder: (context, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                useMaterial3: true,
              ),
              home: FirstScreen(
                selectedImage: _model.selectedImage,
                pickImageFromGallery: _controller.pickImageFromGallery,
               
              ));
        });
  }
}
