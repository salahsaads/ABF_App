import 'package:abf_app/core/app_color/AppColor.dart';
import 'package:abf_app/core/widget/CustomButton.dart';
import 'package:abf_app/features/Code%20verification/presentation/view/Code_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/widget/customtextfield.dart';

class RegisterBody extends StatefulWidget {
  const RegisterBody({super.key});

  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.w,
        right: 30.w,
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
              'تسجيل حساب جديد',
              style: GoogleFonts.almarai(
                textStyle:
                    TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w800),
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              'قم بإدخال بريدك الإلكتروني لتسجيل \nحساب جديد',
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
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const CodeVerificationScreen(
                    completeDataScreen: true,
                  );
                }));
              },
              child: CustomButttom(
                text: 'تسجيل',
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 5,
            ),
            Text(
              'لديك حساب بالفعل ؟',
              textAlign: TextAlign.center,
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
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.arrow_back,
                    color: Appcolor.ButtonColor,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    ' تسجيل الدخول',
                    style: GoogleFonts.almarai(
                      textStyle: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: Appcolor.ButtonColor),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
