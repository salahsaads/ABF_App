import 'package:abf_app/core/app_color/AppColor.dart';
import 'package:flutter/material.dart';

import 'widget/request_screen_body.dart';

class RequsetScreen extends StatelessWidget {
  const RequsetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Appcolor.white,
      body: RequestScreenbody(),
    );
  }
}
