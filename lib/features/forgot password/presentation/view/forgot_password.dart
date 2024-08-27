import 'package:abf_app/core/app_color/AppColor.dart';
import 'package:abf_app/core/widget/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/widget/customtextfield.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // ignore: sort_child_properties_last
              child: Padding(
                padding: EdgeInsets.only(top: 70.h),
                child: Image.asset('assets/sms-notification.png'),
              ),
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height / 3,
              decoration: BoxDecoration(
                color: const Color(0xfffdf9f5),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.r),
                  bottomRight: Radius.circular(30.r),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 12,
            ),
            Text(
              'هل نسيت كلمة المرور ؟',
              style: GoogleFonts.almarai(
                textStyle:
                    TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w800),
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              'قم بإدخال بريدك الإلكتروني لإرسال كود \nالتحقق',
              style: GoogleFonts.almarai(
                textStyle: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff2D2525)),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 7,
            ),
            Padding(
              padding: EdgeInsets.only(left: 33.w, right: 33.w),
              child: const customTextfield(
                icon: 'assets/sms-tracking.png',
                hintText: 'ادخل البريي الالكتروني',
                obscureText: false,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            CustomButttom(
              text: 'ارسال',
            )
          ],
        ),
      ),
    );
  }
}
