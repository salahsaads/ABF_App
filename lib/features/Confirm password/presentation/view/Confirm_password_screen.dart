import 'package:abf_app/core/app_color/AppColor.dart';
import 'package:flutter/material.dart';

import 'widget/ConfirmPasswordScreenbody.dart';

class ConfirmPasswordScreen extends StatelessWidget {
  const ConfirmPasswordScreen({super.key, required this.email, required this.code});
  final String email ;
  final String code ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.white,
      body: ConfirmPasswordScreenBody(email: email, code: code,),
    );
  }
}
