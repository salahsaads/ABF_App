import 'package:abf_app/core/app_color/AppColor.dart';
import 'package:flutter/material.dart';

import 'widget/CompleteTheDataBody.dart';

class CompleteTheDataScreen extends StatelessWidget {
  const CompleteTheDataScreen(
      {super.key, required this.email, required this.code});
  final String email;
  final String code;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.white,
      body: CompleteTheDataBody(
        otp: code,
      ),
    );
  }
}
