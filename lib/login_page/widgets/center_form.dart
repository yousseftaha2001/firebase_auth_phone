import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/instance_manager.dart';
import 'package:phone/login_page/contorller.dart';

class LoginCenterForm extends StatelessWidget {
   LoginCenterForm({super.key});
  var contrller=Get.find<LoginContorller>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: height / 1.7,
            width: width / 1.1,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.sp),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54.withOpacity(0.1),
                  blurRadius: 20,
                  blurStyle: BlurStyle.normal,
                )
              ],
            ),
            child: LayoutBuilder(
              builder: (context, cons) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 0.05.sw, vertical: 0.02.sh),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'phone',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: cons.maxWidth / 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Phone',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: cons.maxWidth / 30,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.h),
                            child: SizedBox(
                              height: cons.maxHeight / 10,
                              child: TextField(
                                keyboardType: TextInputType.phone,
                                controller: contrller.state.phone,
                                decoration: InputDecoration(
                                  filled: true,


                                  fillColor: Colors.grey.withOpacity(0.092),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius: BorderRadius.circular(
                                        cons.maxWidth / 30),
                                  ),
                                  hintText: 'Enter your phone',
                                  hintStyle: TextStyle(
                                    fontSize: cons.maxWidth / 30,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(height: 20.h),
                      SizedBox(height: cons.maxHeight / 80),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Text(
                      //       'Your password',
                      //       style: TextStyle(
                      //         fontWeight: FontWeight.bold,
                      //         fontSize: cons.maxWidth / 30,
                      //       ),
                      //     ),
                      //     Padding(
                      //       padding: EdgeInsets.only(top: 5.h),
                      //       child: TextField(
                      //         decoration: InputDecoration(
                      //           filled: true,
                      //           fillColor: Colors.grey.withOpacity(0.092),
                      //           enabledBorder: OutlineInputBorder(
                      //             borderSide:
                      //                 BorderSide(color: Colors.transparent),
                      //             borderRadius:
                      //                 BorderRadius.circular(cons.maxWidth / 30),
                      //           ),
                      //           hintText: 'Password',
                      //           hintStyle: TextStyle(
                      //             fontSize: cons.maxWidth / 30,
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      SizedBox(height: cons.maxHeight / 80),
                      Row(
                        children: [
                          Flexible(
                            child: RadioListTile(
                              value: true,
                              groupValue: true,
                              onChanged: (e) {},
                              activeColor: Colors.amber[900],
                              contentPadding: EdgeInsets.all(0),
                              title: Text(
                                'Remember Me',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: cons.maxWidth / 30,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forget Password',
                              style: TextStyle(
                                color: Colors.amber[900],
                                fontSize: cons.maxWidth / 30,
                              ),
                            ),
                            // style: TextButton.styleFrom(
                            //   textStyle: TextStyle(
                            //     color: Colors.amber[900],
                            //   ),
                            // ),
                          )
                        ],
                      ),
                      // ElevatedButton(
                      //   onPressed: () async {
                      //     // showDatePicker(
                      //     //   context: context,
                      //     //   initialDate: DateTime.now(),
                      //     //   firstDate: DateTime.now(),
                      //     //   lastDate: DateTime.now().add(Duration(days: 120)),
                      //     //   locale: Locale(AppLocalizations.of(context)!.localeName),
                      //     // );
                      //     // bool started =await FlutterScreenRecording.startRecordScreen('test');
                      //     // print(object)
                      //   },
                      //   child: Text(
                      //     'Login',
                      //     style: TextStyle(
                      //       color: Colors.white,
                      //       fontWeight: FontWeight.bold,
                      //       fontSize: 18.sp,
                      //     ),
                      //   ),
                      //   style: ElevatedButton.styleFrom(
                      //     backgroundColor: Colors.amber[900],
                      //     fixedSize: Size(
                      //         MediaQuery.of(context).size.width / 2, 0.05.sh),
                      //   ),
                      // ),
                      ElevatedButton(
                        onPressed: () async {
                          contrller.sendPhone();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber[900],
                          fixedSize: Size(
                              MediaQuery.of(context).size.width / 2, 0.05.sh),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
