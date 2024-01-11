import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:phone/login_page/widgets/code_dialog.dart';

import 'state.dart';

class LoginContorller extends GetxController {
  final LoginState state = LoginState();


  void sendPhone()async{
    if(state.phone.text.isNotEmpty){
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '${state.phone.text}',
        verificationCompleted: (PhoneAuthCredential credential) {
          print('code sent');
        },
        verificationFailed: (FirebaseAuthException e) {
          print(e.toString());
        },
        codeSent: (String verificationId, int? resendToken) {
          print('code sent2');
          Get.dialog(CodeDialog(veryId: verificationId));
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
      // if(state.phone.text.contains('+2')){
      //   print('send');
      //   await FirebaseAuth.instance.verifyPhoneNumber(
      //     phoneNumber: '${state.phone.text}',
      //     verificationCompleted: (PhoneAuthCredential credential) {
      //       print('code sent');
      //     },
      //     verificationFailed: (FirebaseAuthException e) {},
      //     codeSent: (String verificationId, int? resendToken) {
      //       print('code sent2');
      //     },
      //     codeAutoRetrievalTimeout: (String verificationId) {},
      //   );
      //   print('function doen');
      // }else{
      //   Get.snackbar('Error', 'please enter your phone number with country code!',backgroundColor: Colors.white);
      // }
    }else{
      Get.snackbar('Error', 'please enter your phone number',backgroundColor: Colors.white);
    }
  }

  // void codeArrived()async{
  //
  // }


  Future<void> signInWithPhoneNumber(String smsCode,String verificationId) async {
    try {
      final AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      );
      var r=await FirebaseAuth.instance.signInWithCredential(credential);
      print(r.user!.phoneNumber);
      print('Successfully signed in with phone number');
    } catch (e) {
      print('Error signing in with phone number: $e');
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    state.phone=TextEditingController();
    state.code=TextEditingController();
  }
}
