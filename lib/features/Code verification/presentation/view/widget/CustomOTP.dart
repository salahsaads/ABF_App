import 'package:abf_app/core/widget/CustomButton.dart';
import 'package:abf_app/core/widget/CustomImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/widget/customtextfield.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
class CustomOtpTextField extends StatefulWidget {
  final int numberOfFields;
  final void Function(String) onSubmit;
  final void Function(String)? onCodeChanged;

  const CustomOtpTextField({
    Key? key,
    required this.numberOfFields,
    required this.onSubmit,
    this.onCodeChanged,
  }) : super(key: key);

  @override
  _CustomOtpTextFieldState createState() => _CustomOtpTextFieldState();
}

class _CustomOtpTextFieldState extends State<CustomOtpTextField> {
  List<String> otp = [];

  @override
  void initState() {
    super.initState();
    otp = List.filled(widget.numberOfFields, "");
  }

  void _onOtpChanged(int index, String value) {
    setState(() {
      otp[index] = value;
    });

    if (widget.onCodeChanged != null) {
      widget.onCodeChanged!(otp.join());
    }

    if (value.isNotEmpty) {
      if (index < widget.numberOfFields - 1) {
        FocusScope.of(context).nextFocus();
      } else {
        widget.onSubmit(otp.join());
      }
    } else if (value.isEmpty && index > 0) {
      FocusScope.of(context).previousFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(widget.numberOfFields, (index) {
        return SizedBox(
          width: 55.w,
          height: 50.h,
          child: Center(
            child: TextField(
              showCursor: false,
              textAlign: TextAlign.center,
              style: GoogleFonts.almarai(
                textStyle: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              keyboardType: TextInputType.number,
              maxLength: 1,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 5.h),
                counterText: '',
                border: InputBorder.none,
                filled: true,
                fillColor: otp[index].isNotEmpty
                    ? Colors.black
                    : const Color(0xffF7F7F7),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100.r),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100.r),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (value) => _onOtpChanged(index, value),
            ),
          ),
        );
      }),
    );
  }
}
