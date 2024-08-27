// ignore_for_file: sort_child_properties_last

import 'package:abf_app/core/app_color/AppColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButttom extends StatelessWidget {
  const CustomButttom({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        text,
        style: GoogleFonts.almarai(
          textStyle: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white),
        ),
      ),
      width: MediaQuery.of(context).size.width / 1.2,
      height: 76,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.r),
          color: Appcolor.ButtonColor),
    );
  }
}
