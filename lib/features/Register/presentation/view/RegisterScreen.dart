import 'package:abf_app/core/app_color/AppColor.dart';
import 'package:abf_app/features/Register/presentation/view/widget/RegisterBody.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Appcolor.white,
      body:RegisterBody() ,
    );
  }
}
