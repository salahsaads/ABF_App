import 'package:abf_app/core/widget/CustomButton.dart';
import 'package:abf_app/core/widget/CustomImage.dart';
import 'package:abf_app/features/Code%20verification/presentation/view/Code_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/widget/customtextfield.dart';

class ForgotPasswordBody extends StatefulWidget {
  const ForgotPasswordBody({
    super.key,
  });

  @override
  State<ForgotPasswordBody> createState() => _ForgotPasswordBodyState();
}

class _ForgotPasswordBodyState extends State<ForgotPasswordBody> {
  final TextEditingController emailController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ForgotPasswordImage(
            Image1: 'assets/sms-notification.png',
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
                  color: const Color(0xff2D2525)),
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 8,
          ),
          Padding(
            padding: EdgeInsets.only(left: 33.w, right: 33.w),
            child: customTextfield(
              controller1: emailController,
              icon: 'assets/sms-tracking.png',
              hintText: 'ادخل البريي الالكتروني',
              obscureText: false,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CodeVerificationScreen(
                  completeDataScreen: false,
                  email: emailController.text.trim(),
                );
              }));
            },
            child: const CustomButttom(
              text: 'ارسال',
            ),
          )
        ],
      ),
    );
  }
}
