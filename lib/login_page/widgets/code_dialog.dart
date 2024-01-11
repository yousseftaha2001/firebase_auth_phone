import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phone/login_page/contorller.dart';
import 'package:pinput/pinput.dart';

class CodeDialog extends StatelessWidget {
  CodeDialog({required this.veryId});
  var contrller=Get.find<LoginContorller>();
  late String veryId;
   final defaultPinTheme = PinTheme(
     width: 56,
     height: 56,
     textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
     decoration: BoxDecoration(
       border: Border.all(color: Colors.blue),
       borderRadius: BorderRadius.circular(20),
     ),
   );



  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Enter the code'),
          Pinput(
            defaultPinTheme: defaultPinTheme,
            focusedPinTheme: defaultPinTheme,
            length: 6,
            submittedPinTheme: defaultPinTheme,
            validator: (s) {
              return s == '111111' ? null : 'Pin is incorrect';
            },
            pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
            showCursor: true,
            onCompleted: (pin) {
              print(pin);
              contrller.signInWithPhoneNumber(pin, veryId);

            },
          ),
          // ElevatedButton(onPressed: (){}, child: Text('Ver'))
        ],
      ),
    );
  }
}
