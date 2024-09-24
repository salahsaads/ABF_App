import 'package:abf_app/core/app_color/AppColor.dart';
import 'package:abf_app/core/widget/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/widget/customtextfield.dart';
import '../../../cubit/login_cubit.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({
    super.key,
  });

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          // TODO: implement listener

          if (state is LoginLoaded) {
            Navigator.pushNamedAndRemoveUntil(
              context,
              'Home',
              (route) => false,
            );
          }

          if (state is LoginError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        builder: (context, state) {
          final Cu = BlocProvider.of<LoginCubit>(context);
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
                    'تسجيل الدخول',
                    style: GoogleFonts.almarai(
                      textStyle: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.w800),
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'قم بإدخال بريدك الإلكتروني لتسجيل \nالدخول',
                    style: GoogleFonts.almarai(
                      textStyle: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff878383)),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 25,
                  ),
                  customTextfield(
                    controller1: emailController,
                    icon: 'assets/sms-tracking.png',
                    hintText: 'ادخل البريي الالكتروني',
                    obscureText: false,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 35,
                  ),
                  customTextfield(
                    controller1: passwordController,
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
                  GestureDetector(
                    onTap: () {
                      Cu.loginCubit(
                          email: emailController.text.trim(),
                          password: passwordController.text.trim());
                    },
                    child: CustomButttom(
                      text:
                          state is LoginLoading ? '...جاري التحميل' : 'الدخول',
                    ),
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
                          color: const Color(0xff878383)),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'Register'),
                    child: Row(
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
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
