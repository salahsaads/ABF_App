import 'package:abf_app/core/app_color/AppColor.dart';
import 'package:abf_app/features/CustomItemScreen/presentation/view/widget/customItembody.dart';
import 'package:flutter/material.dart';

class Customitemscreen extends StatelessWidget {
  const Customitemscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.white,
      body: Customitembody(),
    );
  }
}
