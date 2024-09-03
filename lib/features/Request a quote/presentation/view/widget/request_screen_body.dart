import 'package:abf_app/core/app_color/AppColor.dart';
import 'package:abf_app/core/widget/CustomButton.dart';
import 'package:abf_app/core/widget/CustomTextfield2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RequestScreenbody extends StatefulWidget {
  const RequestScreenbody({
    super.key,
  });

  @override
  State<RequestScreenbody> createState() => _RequestScreenbodyState();
}

class _RequestScreenbodyState extends State<RequestScreenbody> {
  final TextEditingController f_nameController = TextEditingController();
  final TextEditingController l_nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 55.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Spacer(),
                Text(
                  'طلب عرض سعر',
                  style: GoogleFonts.almarai(
                    textStyle: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w800,
                        color: const Color(0xff000000)),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Color(0xff1D75B1),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'يمكنك إرسال طلب عرض سعر خاص',
                  style: GoogleFonts.almarai(
                    textStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff878383)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .07,
            ),
            customTextfield2(controller: f_nameController,   hintText: 'الاسم الاول', obscureText: false),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            customTextfield2(controller: l_nameController,   hintText: 'الاسم الاخير', obscureText: false),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            customTextfield2(  controller: emailController,   hintText: 'البريد الالكتروني', obscureText: false),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            customTextfield2(controller: phoneController,   hintText: 'رقم الجوال', obscureText: false),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(right: 40.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.arrow_back_ios),
                    Text(
                      'أعمال الصيانة - أعمال DUCTأل \n- المشاريع - المنتجات',
                      style: GoogleFonts.almarai(
                        textStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff878383)),
                      ),
                    )
                  ],
                ),
              ),
              width: double.infinity,
              height: 69.h,
              decoration: BoxDecoration(
                  color: Color(0xffF7F7F7),
                  borderRadius: BorderRadius.circular(33.r)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Container(
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                textDirection: TextDirection.rtl,
                decoration: InputDecoration(
                  suffixIcon: Container(
                    width: 1.w,
                    height: 60.h,
                  ),
                  hintTextDirection: TextDirection.rtl,
                  filled: true,
                  fillColor: Appcolor.TextFieldColor,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(33.r)),
                  hintText: 'نص الرسالة',
                  hintStyle: GoogleFonts.almarai(
                    textStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff878383)),
                  ),
                ),
              ),
              width: double.infinity,
              height: 150.h,
              decoration: BoxDecoration(
                  color: Color(0xffF7F7F7),
                  borderRadius: BorderRadius.circular(33.r)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            CustomButttom(text: 'إرسال الطلب'),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
          ],
        ),
      ),
    );
  }
}
