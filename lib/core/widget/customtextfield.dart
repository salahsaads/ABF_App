import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_color/AppColor.dart';

class customTextfield extends StatelessWidget {
  const customTextfield({
    super.key,
    required this.icon,
    required this.hintText,
    required this.obscureText,
  });
  final String icon;
  final String hintText;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        obscureText: obscureText,
        keyboardType: TextInputType.emailAddress,
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          prefixIcon: obscureText
              ? Padding(
                  padding: EdgeInsets.only(left: 35.w),
                  child: Icon(
                    Icons.visibility,
                    color: Color(0xffA5A5A5),
                  ),
                )
              : null,
          suffixIcon: Container(
            width: 70.w,
            height: 65.h,
            child: Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                Image.asset('assets/Line 1.png'),
                SizedBox(
                  width: 10.w,
                ),
                Image.asset(icon),
                SizedBox(
                  width: 20.w,
                ),
              ],
            ),
          ),
          hintTextDirection: TextDirection.rtl,
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
