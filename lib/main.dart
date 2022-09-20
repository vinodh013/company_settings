import 'package:company_settings/animation/stack.dart';
import 'package:company_settings/are_you_sure.dart';
import 'package:company_settings/constants/colors.dart';
import 'package:company_settings/delete_project.dart';
import 'package:company_settings/widgets/form.dart';
import 'package:company_settings/widgets/logo.dart';
import 'package:company_settings/widgets/tapbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CompanySettings(),
    );
  }
}

class CompanySettings extends StatelessWidget {
  const CompanySettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double width = Get.width;
    return Material(
       
      child: Stack(
        children: [
          
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.blue[50],
            child: SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 700,
                        width: 590,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 22,
                              ),
                              child: CustomText(
                                  text: "Business Settings",
                                  weight: FontWeight.w600,
                                  size: 20),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SettingTapBar(),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 22,
                              ),
                              child: CustomText(
                                  text: "Name",
                                  color: Colors.grey,
                                  weight: FontWeight.w600,
                                  size: 12),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomForm(),
                            SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 22,
                              ),
                              child: CustomText(
                                  text: "Business address",
                                  color: Colors.grey,
                                  weight: FontWeight.w600,
                                  size: 12),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomForm(),
                            SizedBox(
                              height: 15,
                            ),
                            CustomForm(),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Flexible(flex: 1, child: CustomForm()),
                                Flexible(flex: 1, child: CustomForm()),
                              ],
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 22,
                              ),
                              child: CustomText(
                                  text: "Logo",
                                  color: Colors.grey,
                                  weight: FontWeight.w600,
                                  size: 12),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Uploadlogo(),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 22,
                              ),
                              child: CustomText(
                                  text:
                                      "Upload image files with extensions jpg. png. gif or svg",
                                  color: Colors.grey,
                                  weight: FontWeight.w600,
                                  size: 10),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
         Positioned(
          top: 420,
          left: width * 0.2,
           child: DeleteProject(),
         ),

         Positioned(
          top:  300,
          right: width * 0.2,
          child: AreYouSure())
        ],
      ),
    );
  }
}

