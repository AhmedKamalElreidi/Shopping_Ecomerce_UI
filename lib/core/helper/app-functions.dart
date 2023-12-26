import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: depend_on_referenced_packages

class AppFunctions {
  static navigateTo({required context, required navigatedScreen}) =>
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => navigatedScreen));
  static navigateAndReplacement({required context, required navigatedScreen}) =>
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => navigatedScreen));
  static navigateAndFinishTo({required context, required navigatedScreen}) =>
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => navigatedScreen),
        (route) => false,
      );

  static popNavigate({required context}) => Navigator.pop(context);

  static showToast({required String text}) => Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 18);

  static showModelBottomSheetWithBlurBackground(
          {required context, required Widget widget}) =>
      showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        constraints: const BoxConstraints(maxWidth: double.infinity),
        builder: (context) => BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: widget,
        ),
      );

  static showAlertDialogWithHeaderImage(
          {required context,
          required Widget dialogWidget,
          required String image}) =>
      showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 0,
              backgroundColor: Colors.transparent,
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(
                        left: 20, top: 20 + 20, right: 20, bottom: 20),
                    margin: const EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              offset: Offset(0, 10),
                              blurRadius: 10),
                        ]),
                    child: dialogWidget,
                  ),
                  // bottom part
                  Positioned(
                    left: 20,
                    right: 20,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 32,
                      child: Image.asset(image),
                    ),
                  )
                ],
              ),
            );
          });
}
