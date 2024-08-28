import 'package:abf_app/core/app_color/AppColor.dart';
import 'package:flutter/material.dart';

import 'widget/body.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Appcolor.white,
      body: ForgotPasswordBody(),
    );
  }
}
