
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: 177.w, // Fixed width for each item
          height: 250.h, // Fixed height for each item
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              const BoxShadow(
                color: Color(0xfff1f1f1), // Adjust opacity if needed
                blurRadius: 60, // equivalent to 60px blur
                spreadRadius: 3, // equivalent to 3px spread
                offset:
                    Offset(0, 0), // equivalent to 0px offsetX and 0px offsetY
              ),
            ],
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Column(
            children: [
              Image.asset('assets/33770783_2207.q803.001.P.m012.c20 1.png'),
              Text(
                textAlign: TextAlign.end,
                'مكيف كاسيت جري\n 1.5 حصان',
                style: GoogleFonts.almarai(
                  textStyle: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0.w, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Image.asset('assets/icon.png')],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0, right: 20.0.w, top: 10),
                child: Text(
                  textAlign: TextAlign.end,
                  'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما ',
                  style: GoogleFonts.almarai(
                    textStyle: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff878383),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0, right: 20.0.w, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      textAlign: TextAlign.end,
                      'ر.س 7.750.500',
                      style: GoogleFonts.almarai(
                        textStyle: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xffCA7009),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0, right: 20.0.w, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.favorite_border),
                    Container(
                      width: 120.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35.r),
                        border: Border.all(
                          color: const Color(0xffd4e5f0),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'أضف للعربة',
                            style: GoogleFonts.almarai(
                              textStyle: TextStyle(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xff1D75B1)),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          Image.asset('assets/shopping-cart.png'),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}