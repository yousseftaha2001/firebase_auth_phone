import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math'as math;
class LoginTopWidget extends StatelessWidget {
  const LoginTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Positioned(
      // bottom: 30,
      // top: -0.1.sh,
      // left: -0.2.sw,
      top: -height/8,
      left: -width/6,
      child: Transform.rotate(
        angle: math.pi / 6,
        child: Container(
          height: 0.2.sh,
          width: 0.6.sw,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.sp),
            color: Colors.amber[900],
          ),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Positioned(
                // top: 2,
                // left: 0,
                bottom: 0.02.sh,
                right: 0.02.sw,
                child: Transform.rotate(
                  angle: -math.pi / 6,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}