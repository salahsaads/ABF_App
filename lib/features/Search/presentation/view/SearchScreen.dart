import 'package:abf_app/core/app_color/AppColor.dart';
import 'package:abf_app/features/Search/presentation/view/widget/SearchScreenbody.dart';
import 'package:flutter/material.dart';

class Searchscreen extends StatelessWidget {
  const Searchscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Appcolor.white,
      body: SearchScreenbody(),
    );
  }
}
