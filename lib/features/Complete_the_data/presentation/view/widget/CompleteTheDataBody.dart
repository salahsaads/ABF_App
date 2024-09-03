import 'package:abf_app/core/widget/CustomButton.dart';
import 'package:abf_app/core/widget/CustomTextfield2.dart';
import 'package:abf_app/features/Complete_the_data/cubit/complete_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CompleteTheDataBody extends StatefulWidget {
  const CompleteTheDataBody({super.key, required this.otp});
  final String otp;
  @override
  State<CompleteTheDataBody> createState() => _CompleteTheDataBodyState();
}

class _CompleteTheDataBodyState extends State<CompleteTheDataBody> {
  final TextEditingController f_nameController = TextEditingController();
  final TextEditingController l_nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordController2 = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    f_nameController.dispose();
    l_nameController.dispose();
    phoneController.dispose();
    passwordController2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocProvider(
        create: (context) => CompleteCubit(),
        child: BlocConsumer<CompleteCubit, CompleteState>(
          listener: (context, state) {
            // TODO: implement listener

            if (state is CompleteLoaded) {
              Navigator.pushNamedAndRemoveUntil(
                  context, 'Home', (route) => false);
            }
          },
          builder: (context, state) {
            final Cu = BlocProvider.of<CompleteCubit>(context);
            return Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 12,
                ),
                Image.asset('assets/user.png'),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Text(
                  'إستكمال البيانات',
                  style: GoogleFonts.almarai(
                    textStyle:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w800),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40.w, right: 40.w),
                  child: Text(
                    textAlign: TextAlign.center,
                    'قم بإستكمال بياناتك الشخصية لتتمكن من تسجيل حسابك',
                    style: GoogleFonts.almarai(
                      textStyle: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff878383)),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                customTextfield2(
                  controller: f_nameController,
                  hintText: 'الاسم الأول',
                  obscureText: false,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                customTextfield2(
                  controller: l_nameController,
                  hintText: 'الاسم الأخير',
                  obscureText: false,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                customTextfield2(
                  controller: phoneController,
                  hintText: 'رقم الجوال',
                  obscureText: false,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                customTextfield2(
                  controller: passwordController,
                  hintText: 'كلمة المرور',
                  obscureText: true,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                customTextfield2(
                  controller: passwordController2,
                  hintText: 'كلمة المرور',
                  obscureText: true,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                GestureDetector(
                    onTap: () {
                      Cu.completeCubit(
                          email: emailController.text.trim(),
                          password: passwordController.text.trim(),
                          confirm_password: passwordController2.text.trim(),
                          f_name: f_nameController.text.trim(),
                          l_name: l_nameController.text.trim(),
                          phone: phoneController.text.trim(),
                          otp: widget.otp);
                    },
                    child: CustomButttom(
                        text: state is CompleteLoading
                            ? 'جاري التاكيد'
                            : 'تأكيد')),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
