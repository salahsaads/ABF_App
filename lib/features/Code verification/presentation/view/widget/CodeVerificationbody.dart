import 'dart:developer';

import 'package:abf_app/core/widget/CustomButton.dart';
import 'package:abf_app/core/widget/CustomImage.dart';
import 'package:abf_app/features/Code%20verification/cubit/codecheck_cubit.dart';
import 'package:abf_app/features/Code%20verification/presentation/view/widget/CustomOTP.dart';
import 'package:abf_app/features/Complete_the_data/presentation/view/Complete_the_data_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/app_color/AppColor.dart';

class CodeVerificationBody extends StatefulWidget {
  const CodeVerificationBody(
      {super.key, required this.completeDataScreen, required this.email});
  final bool completeDataScreen;
  final String email;
  @override
  State<CodeVerificationBody> createState() => _CodeVerificationBodyState();
}

class _CodeVerificationBodyState extends State<CodeVerificationBody> {
  String? code;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CodecheckCubit(),
      child: BlocConsumer<CodecheckCubit, CodecheckState>(
        listener: (context, state) {
          if (state is CodecheckLoaded) {
            if (widget.completeDataScreen) {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CompleteTheDataScreen(
                  email: widget.email,
                  code: code!,
                );
              }));
            } else {
              Navigator.pushNamed(context, 'Confirm_password');
            }
          }
        },
        builder: (context, state) {
          final Cu = BlocProvider.of<CodecheckCubit>(context);
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
                      onSubmit: (p0) {
                        code = p0;
                      },
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                GestureDetector(
                  onTap: () {
                    // log('code $code');
                    Cu.checkCubit(email: widget.email, otp: code.toString());
                  },
                  child: CustomButttom(
                    text: state is CodecheckLoading ? 'جاري التحقق' : 'تحقق',
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
                        transform: Matrix4.rotationY(
                            3.14), // Flips the icon horizontally
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
        },
      ),
    );
  }
}
