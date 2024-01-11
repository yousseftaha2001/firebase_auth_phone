import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:phone/login_page/widgets/center_form.dart';
import 'package:phone/login_page/widgets/login_top.dart';

import 'contorller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final contorller = Get.put(LoginContorller());
  final state = Get.find<LoginContorller>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // alignment: Alignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                // alignment: Alignment.bottomCenter,
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: MediaQuery.of(context).size.height/1.9,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.amber[900],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(80.sp),
                                topRight: Radius.circular(80.sp),
                              )
                          ),
                        ),
                      ),
                      LoginCenterForm(),
                    ],
                  ),
                ],
              ),
            ),
          ),
          LoginTopWidget(),
        ],
      ),
    );
  }
}
