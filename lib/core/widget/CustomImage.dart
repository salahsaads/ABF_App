import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPasswordImage extends StatelessWidget {
  const ForgotPasswordImage({
    super.key,
    required this.Image1,
  });

  final String Image1;

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: sort_child_properties_last
      child: Padding(
        padding: EdgeInsets.only(top: 70.h),
        child: Image.asset(Image1),
      ),
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height / 3,
      decoration: BoxDecoration(
        color: const Color(0xfffdf9f5),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.r),
          bottomRight: Radius.circular(30.r),
        ),
      ),
    );
  }
}
