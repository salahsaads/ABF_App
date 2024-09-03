import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_color/AppColor.dart';

class customTextfield2 extends StatelessWidget {
  const customTextfield2({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.controller,
  });
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: TextInputType.emailAddress,
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          suffixIcon: Container(
            width: 1.w,
            height: 60.h,
          ),
          hintTextDirection: TextDirection.rtl,
          prefixIcon: obscureText
              ? Padding(
                  padding: EdgeInsets.only(left: 35.w),
                  child: Icon(
                    Icons.visibility,
                    color: Color(0xffA5A5A5),
                  ),
                )
              : null,
          filled: true,
          fillColor: Appcolor.TextFieldColor,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(33.r)),
          hintText: '$hintText',
          hintStyle: GoogleFonts.almarai(
            textStyle: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: Color(0xff878383)),
          ),
        ),
      ),
    );
  }
}
