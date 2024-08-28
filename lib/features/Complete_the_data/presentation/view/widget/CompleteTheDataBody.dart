import 'package:abf_app/core/widget/CustomButton.dart';
import 'package:abf_app/core/widget/CustomTextfield2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CompleteTheDataBody extends StatefulWidget {
  const CompleteTheDataBody({super.key});

  @override
  State<CompleteTheDataBody> createState() => _CompleteTheDataBodyState();
}

class _CompleteTheDataBodyState extends State<CompleteTheDataBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
          const customTextfield2(
            hintText: 'الاسم الأول',
            obscureText: false,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          const customTextfield2(
            hintText: 'الاسم الأخير',
            obscureText: false,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          const customTextfield2(
            hintText: 'رقم الجوال',
            obscureText: false,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          const customTextfield2(
            hintText: 'كلمة المرور',
            obscureText: true,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          const customTextfield2(
            hintText: 'كلمة المرور',
            obscureText: true,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          GestureDetector(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, 'Home', (route) => false);
              },
              child: CustomButttom(text: 'تأكيد')),
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
          ),
        ],
      ),
    );
  }
}
