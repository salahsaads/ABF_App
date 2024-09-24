import 'package:abf_app/core/app_color/AppColor.dart';
import 'package:abf_app/core/widget/CustomButton.dart';
import 'package:abf_app/features/Code%20verification/presentation/view/Code_verification_screen.dart';
import 'package:abf_app/features/Register/cubit/sing_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/widget/customtextfield.dart';

class RegisterBody extends StatefulWidget {
  const RegisterBody({super.key});

  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
  final TextEditingController emailController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SingUpCubit(),
      child: BlocConsumer<SingUpCubit, SingUpState>(
        listener: (context, state) {
          if (state is SingUpLoaded) {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return CodeVerificationScreen(
                email: emailController.text.trim(),
                completeDataScreen: true,
              );
            }));
          }
          if (state is SingUpError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        builder: (context, state) {
          final Cu = BlocProvider.of<SingUpCubit>(context);

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
                      textStyle: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.w800),
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'قم بإدخال بريدك الإلكتروني لتسجيل \nحساب جديد',
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
                  GestureDetector(
                    onTap: () {
                      Cu.SingUpcubit(email: emailController.text.trim());
                    },
                    child: CustomButttom(
                      text: state is SingUpLoading ? 'جاري التحميل' : 'تسجيل',
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
                          color: const Color(0xff878383)),
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
        },
      ),
    );
  }
}
