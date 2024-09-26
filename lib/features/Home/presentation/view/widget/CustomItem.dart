import 'package:abf_app/features/Home/presentation/view_model/Item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomItem extends StatelessWidget {
  CustomItem({super.key, required this.item});
  ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 177.w,
        height: 144.h,
        decoration: BoxDecoration(
          color: item.color,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Image(
                image: AssetImage(
              item.image,
            )),
            Text(
              item.title,
              style: GoogleFonts.almarai(
                textStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffFFFFFF)),
              ),
            )
          ],
        ));
  }
}
