// ignore_for_file: sort_child_properties_last

import 'package:abf_app/core/app_color/AppColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/widget/CustomButton.dart';
import '../../../../core/widget/customtextfield.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.white,
      body: Padding(
        padding: EdgeInsets.only(
          left: 33,
          right: 33,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 8,
              ),
              Image.asset('assets/image 2.png'),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Text(
                'تسجيل الدخول',
                style: GoogleFonts.almarai(
                  textStyle:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w800),
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                'قم بإدخال بريدك الإلكتروني لتسجيل \nالدخول',
                style: GoogleFonts.almarai(
                  textStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff878383)),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ),
              const customTextfield(
                icon: 'assets/sms-tracking.png',
                hintText: 'ادخل البريي الالكتروني',
                obscureText: false,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 35,
              ),
              const customTextfield(
                icon: 'assets/twotone.png',
                hintText: 'أدخل كلمة المرور',
                obscureText: true,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 35,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'ForgotPassword');
                },
                child: Text(
                  'هل نسيت كلمة المرور ؟',
                  style: GoogleFonts.almarai(
                    textStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 35,
              ),
              CustomButttom(
                text: 'الدخول',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 35,
              ),
              Text(
                textAlign: TextAlign.center,
                'ليس لديك حساب ؟',
                style: GoogleFonts.almarai(
                  textStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff878383)),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.arrow_back,
                    color: Appcolor.ButtonColor,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    ' تسجيل حساب جديد',
                    style: GoogleFonts.almarai(
                      textStyle: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: Appcolor.ButtonColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
