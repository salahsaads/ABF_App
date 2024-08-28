import 'package:abf_app/core/widget/CustomButton.dart';
import 'package:abf_app/core/widget/CustomImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/widget/customtextfield.dart';

class ConfirmPasswordScreenBody extends StatelessWidget {
  const ConfirmPasswordScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ForgotPasswordImage(
            Image1: 'assets/unlock.png',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 12,
          ),
          Text(
            'كلمة المرور الجديدة',
            style: GoogleFonts.almarai(
              textStyle:
                  TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w800),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 45.h, right: 45.h),
            child: Text(
              textAlign: TextAlign.center,
              'قم بتعيين كلمة المرور الجديدة الخاصة بحسابك',
              style: GoogleFonts.almarai(
                textStyle: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff2D2525)),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 15,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w),
            child: const customTextfield(
              icon: 'assets/twotone.png',
              hintText: 'كلمة المرور الجديدة',
              obscureText: true,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 45,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w),
            child: const customTextfield(
              icon: 'assets/twotone.png',
              hintText: 'تأكيد كلمة المرور الجديدة',
              obscureText: true,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 15,
          ),
          GestureDetector(
            onTap: () {},
            child: const CustomButttom(
              text: 'تاكيد',
            ),
          )
        ],
      ),
    );
  }
}
