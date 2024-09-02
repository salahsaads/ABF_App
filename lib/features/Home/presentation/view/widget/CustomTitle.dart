import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 26.w, right: 26.w),
      child: Row(
        children: [
          const Icon(
            Icons.arrow_back_ios,
            color: Color(0xffCA7009),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 200,
          ),
          Text(
            'عرض المزيد',
            style: GoogleFonts.almarai(
              textStyle: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffCA7009)),
            ),
          ),
          const Spacer(),
          Text(
            '$title',
            style: GoogleFonts.almarai(
              textStyle: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w800,
              ),
            ),
          )
        ],
      ),
    );
  }
}
