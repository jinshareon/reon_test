import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontpage/controller/dropdown.dart';
import 'package:frontpage/controller/phonecontroller.dart';
import 'package:frontpage/controller/state.dart';
import 'package:frontpage/controller/timezone.dart';
import 'package:frontpage/icons/buttontheme.dart';
import 'package:frontpage/icons/primarytextfield.dart';
import 'package:frontpage/icons/texticons.dart';

import '../controller/datacontroller.dart';

class FirstScreen extends StatefulWidget {
  final File? selectedImage;
  final VoidCallback pickImageFromGallery;
  

  const FirstScreen({
    Key? key,
    required this.selectedImage,
    required this.pickImageFromGallery,
   
  }) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  DataController dataController = DataController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: true,
        // appbar
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(67.0),
          child: AppBar(
            leadingWidth: 113,
            backgroundColor: const Color.fromRGBO(234, 239, 255, 1),
            leading: Container(
              padding: const EdgeInsets.only(left: 29),
              child: Image.asset(
                'assets/images/logo-2 1 (1).png',
              ),
            ),
            actions: [
              IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/Vector.svg',
                  width: 26.66,
                  height: 24.66,
                ),
                onPressed: () {},
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/Group.svg',
                  width: 24.66,
                  height: 24.66,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/noun-384290 1.svg',
                  width: 24.66,
                  height: 24.66,
                ),
              )
            ],
          ),
        ),
        // body content
        body: SingleChildScrollView(reverse: true,
         
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                child: Container(
                    margin: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 25,
                    ),
                    width: width * 0.92,height: height * 0.75
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(15, 46, 156, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12, right: 11),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                //profile photo adding
                                Stack(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 44),
                                      width: 54,
                                      height: 54,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1),
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Container(
                                      child: CircleAvatar(
                                       backgroundImage: widget
                                                      .selectedImage !=
                                                  null
                                              ? FileImage(widget.selectedImage!,)
                                              : null,
                                          child: widget.selectedImage == null
                                              ? const Icon(Icons.person,
                                                  size: 29)
                                              : null,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 29,right: 10,
                                      top: 35,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromRGBO(15, 46, 156, 1),
                                        ),
                                        width: 11,
                                        height: 17,
                                        child: Center(
                                          child: IconButton(
                                            onPressed:
                                                widget.pickImageFromGallery,
                                            icon: const Icon(
                                              size: 10,
                                              Icons.camera_alt_outlined,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 18.w,
                                ),
                                 // display name
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          margin:
                                              const EdgeInsets.only(top: 24),
                                          child: const textfont(
                                              text: 'DisplayName')),
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                      Container(
                                          width: width * 0.65,
                                          height: height * 0.069,
                                          child: customTextfield(
                                            controller: dataController.name,
                                          ))
                                    ]),
                              ],
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            //phone
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(child: const textfont(text: 'Phone')),
                                SizedBox(
                                  height: 3.h,
                                ),
                                SizedBox(
                                    width: width * 0.93,
                                    height: 74.16,
                                    child: phonenum()),
                              ],
                            ),
                            
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                textfont(text: 'Email'),
                                SizedBox(width: 120),
                                textfont(text: 'Country')
                              ],
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            // email
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: width * 0.415,
                                    height: height * 0.079,
                                    child: customTextfield(
                                      controller: dataController.email,
                                    )),
                                SizedBox(
                                  width: 6.h,
                                ),
                                // country
                                Container(
                                    width: width * 0.415,
                                    height: height * 0.079,
                                    child: Country())
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            
                            Container(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                textfont(text: 'State'),
                                SizedBox(width: 126.w),
                                textfont(text: 'Timezone')
                              ],
                            )),
                            SizedBox(
                              height: 3.h,
                            ),
                            // states
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                            Container(
                                width: width * 0.415,
                                height: height * 0.079,
                                child: states()),
                            SizedBox(
                              width: 5.h,
                            ),

                            Container(
                                width: width * 0.415,
                                height: height * 0.079,
                                child: timezone()) //timezone
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                textfont(text: 'Address'),
                                SizedBox(width: 110.w),
                                textfont(text: 'Zipcode')
                              ],
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Container(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: width * 0.415,
                                    height: height * 0.079,
                                    child: customTextfield(
                                      controller: dataController.address,
                                    )),
                                const SizedBox(
                                  width: 6,
                                ),
                                Container(
                                    width: width * 0.415,
                                    height: height * 0.079,
                                    child: customTextfield(
                                      controller: dataController.zipcode,
                                    )),
                              ],
                            )),
                            SizedBox(height: 14.h),
                            Container(
                                margin: const EdgeInsets.only(
                                  left: 150,
                                ),
                                child: Container(
                                    width: width * 0.52,
                                    child:
                                        const button(title: 'Update Profile'))) //elevated button
                          ]),
                    )),
              ),
            ],
          ),
        ),
        bottomNavigationBar: SizedBox( //bottom navigation bar
          height: 100,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.black45,
            selectedItemColor: const Color.fromRGBO(15, 46, 156, 1),
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    size: 30,
                  ),
                  label: 'Home'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.schedule_outlined), label: 'Schedule'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.add_circle_outline), label: 'Add A Sibling'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.note_add_outlined), label: 'Add Subject'),
            ],
          ),
        ));
  }
}
