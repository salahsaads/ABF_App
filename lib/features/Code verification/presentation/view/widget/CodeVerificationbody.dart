import 'package:abf_app/core/widget/CustomButton.dart';
import 'package:abf_app/core/widget/CustomImage.dart';
import 'package:abf_app/features/Code%20verification/presentation/view/widget/CustomOTP.dart';
import 'package:abf_app/features/Complete_the_data/presentation/view/Complete_the_data_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/app_color/AppColor.dart';

class CodeVerificationBody extends StatefulWidget {
  const CodeVerificationBody({super.key, required this.completeDataScreen});
  final bool completeDataScreen;
  @override
  State<CodeVerificationBody> createState() => _CodeVerificationBodyState();
}

class _CodeVerificationBodyState extends State<CodeVerificationBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ForgotPasswordImage(
            Image1: 'assets/Group 176119.png',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 12,
          ),
          Text(
            'كود التحقق',
            style: GoogleFonts.almarai(
              textStyle:
                  TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w800),
            ),
          ),
          Text(
            textAlign: TextAlign.center,
            'قم بكتابة كود التحقق المكون من 5 أرقام الذي تم إرساله إليك عبر البريد الإلكتروني',
            style: GoogleFonts.almarai(
              textStyle: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff2D2525)),
            ),
          ),
          Text(
            textAlign: TextAlign.center,
            'Salah@gmail.com',
            style: GoogleFonts.almarai(
              textStyle: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff2D2525)),
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 12,
          ),
          Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w),
              child: CustomOtpTextField(
                numberOfFields: 5,
                onSubmit: (p0) => print(p0),
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          GestureDetector(
            onTap: () {
              if (widget.completeDataScreen) {
                Navigator.pushNamed(context, 'CompleteTheDataScreen');
              } else {
                Navigator.pushNamed(context, 'Confirm_password');
              }
            },
            child: const CustomButttom(
              text: 'تحقق',
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 40,
          ),
          Text(
            textAlign: TextAlign.center,
            'لم يتم إرسال كود التحقق ؟',
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Transform(
                  alignment: Alignment.center,
                  transform:
                      Matrix4.rotationY(3.14), // Flips the icon horizontally
                  child: Icon(
                    Icons.replay,
                    color: Appcolor.ButtonColor,
                  ),
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                'أرسل الكود مرة أخرى',
                style: GoogleFonts.almarai(
                  textStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: Appcolor.ButtonColor),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key,
    required this.active,
  });
  final bool active;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25.r,
      backgroundColor: !active ? const Color(0xffF7F7F7) : Colors.black,
      child: active
          ? Text(
              '1',
              style: GoogleFonts.almarai(
                textStyle: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            )
          : null,
    );
  }
}
