import 'package:abf_app/core/app_color/AppColor.dart';
import 'package:abf_app/features/Home/presentation/view/widget/HomeBody.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1f1f1),
      body: HomeBody(),
    );
  }
}
