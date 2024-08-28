import 'package:abf_app/core/app_color/AppColor.dart';
import 'package:flutter/material.dart';

import 'widget/CompleteTheDataBody.dart';

class CompleteTheDataScreen extends StatelessWidget {
  const CompleteTheDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.white,
      body: const CompleteTheDataBody(),
    );
  }
}
