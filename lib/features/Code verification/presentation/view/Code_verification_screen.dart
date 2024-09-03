import 'package:abf_app/core/app_color/AppColor.dart';
import 'package:abf_app/features/Code%20verification/presentation/view/widget/CodeVerificationbody.dart';
import 'package:flutter/material.dart';

class CodeVerificationScreen extends StatelessWidget {
  const CodeVerificationScreen(
      {super.key, required this.completeDataScreen, required this.email});
  final bool completeDataScreen;
  final String email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.white,
      body: CodeVerificationBody(
        completeDataScreen: completeDataScreen,
        email: email,
      ),
    );
  }
}
