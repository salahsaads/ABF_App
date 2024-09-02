
import 'package:abf_app/features/Home/presentation/view/widget/customlistItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomList1 extends StatelessWidget {
  const CustomList1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
      ),
      height: 250.h,
      margin:
          EdgeInsets.only(right: 4.w), // Fixed height for horizontal list view
      padding: EdgeInsets.only(right: 22.w),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        reverse: true,
        scrollDirection: Axis.horizontal,
        itemCount: 5, // Number of items in the list
        itemBuilder: (context, index) {
          return  GestureDetector( 
            onTap: () => Navigator.pushNamed(context, 'details'),
            child: CustomListItem());
        },
      ),
    );
  }
}
