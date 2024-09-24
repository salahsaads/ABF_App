import 'package:abf_app/core/app_color/AppColor.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreenbody extends StatefulWidget {
  const SearchScreenbody({super.key});

  @override
  State<SearchScreenbody> createState() => _SearchScreenbodyState();
}

class _SearchScreenbodyState extends State<SearchScreenbody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 32.w, left: 32.w, top: 45.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'البحث',
                style: GoogleFonts.almarai(
                    fontSize: 18.sp, fontWeight: FontWeight.w800),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .3,
              ),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Appcolor.ButtonColor,
                ),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
          Container(
            width: double.infinity,
            height: 70.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(33.r),
              color: const Color(0xffF7F7F7),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 16.w), // Add horizontal padding
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // Align text to the start
                      mainAxisAlignment:
                          MainAxisAlignment.end, // Center vertically
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'أدخل كلمة البحث',
                              style: GoogleFonts.almarai(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff878383)),
                            ),
                          ],
                        ),
                        // Add some spacing between Text and TextField
                        TextField(
                          textDirection: TextDirection.rtl,
                          decoration: InputDecoration(
                            hintTextDirection: TextDirection.rtl,

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.r),
                              borderSide: BorderSide.none, // No border
                            ),
                            fillColor: const Color(0xffF7F7F7),

                            filled: true, // Background color of TextField
                            hintText: 'بحث...', // Placeholder text
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset('assets/search-normal_broken.png')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
