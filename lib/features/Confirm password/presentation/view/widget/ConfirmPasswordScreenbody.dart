import 'package:abf_app/core/widget/CustomButton.dart';
import 'package:abf_app/core/widget/CustomImage.dart';
import 'package:abf_app/features/Confirm%20password/cubit/confirm_password_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/widget/customtextfield.dart';

class ConfirmPasswordScreenBody extends StatefulWidget {
  const ConfirmPasswordScreenBody({
    super.key,
    required this.email,
    required this.code,
  });
  final String email;
  final String code;
  @override
  State<ConfirmPasswordScreenBody> createState() =>
      _ConfirmPasswordScreenBodyState();
}

class _ConfirmPasswordScreenBodyState extends State<ConfirmPasswordScreenBody> {
  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocProvider(
        create: (context) => ConfirmPasswordCubit(),
        child: BlocConsumer<ConfirmPasswordCubit, ConfirmPasswordState>(
          listener: (context, state) {
            // TODO: implement listener
            if (state is ConfirmPasswordLoaded) {
              Navigator.pushNamedAndRemoveUntil(
                  context, 'Home', (Route<dynamic> route) => false);
            } else if (state is ConfirmPasswordError) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(state.message)));
            }
          },
          builder: (context, state) {
            final Cu = BlocProvider.of<ConfirmPasswordCubit>(context);
            return Column(
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
                  child: customTextfield(
                    controller1: passwordController,
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
                  child: customTextfield(
                    controller1: confirmPasswordController,
                    icon: 'assets/twotone.png',
                    hintText: 'تأكيد كلمة المرور الجديدة',
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 15,
                ),
                GestureDetector(
                  onTap: () {
                    Cu.confirmPassword(
                        email: widget.email,
                        otp: widget.code,
                        password: passwordController.text.trim(),
                        password_confirmation:
                            confirmPasswordController.text.trim());
                  },
                  child: CustomButttom(
                    text: state is ConfirmPasswordLoading
                        ? 'جاري التاكيد'
                        : 'تاكيد',
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
