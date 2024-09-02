import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PageViewWithIndicator extends StatefulWidget {
  @override
  _PageViewWithIndicatorState createState() => _PageViewWithIndicatorState();
}

class _PageViewWithIndicatorState extends State<PageViewWithIndicator> {
  int _currentPage = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w, right: 30.w),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(38.r),
            ),
            width: double.infinity,
            height: 150.h,
            child: PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(38.r),
                    color: Colors.green,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 50.w, right: 50.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'كل ما تحتاجه من مكيفات',
                          style: GoogleFonts.almarai(
                            textStyle: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          textAlign: TextAlign.center, // Center the text
                        ),
                        Text(
                          'أصبح سهلا الآن وبين يديك فقط أطب ما تحتاجه ونصله إليك',
                          style: GoogleFonts.almarai(
                            textStyle: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                          textAlign: TextAlign.center, // Center the text
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(38.r),
                    color: Colors.green,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 50.w, right: 50.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'كل ما تحتاجه من مكيفات',
                          style: GoogleFonts.almarai(
                            textStyle: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          textAlign: TextAlign.center, // Center the text
                        ),
                        Text(
                          'أصبح سهلا الآن وبين يديك فقط أطب ما تحتاجه ونصله إليك',
                          style: GoogleFonts.almarai(
                            textStyle: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                          textAlign: TextAlign.center, // Center the text
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(38.r),
                  ),
                  child: Center(
                    child: Text(
                      'Page 3',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(38.r),
                  ),
                  child: Center(
                    child: Text(
                      'Page 3',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(38.r),
                  ),
                  child: Center(
                    child: Text(
                      'Page 3',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Add some spacing between PageView and Indicator
          Positioned(
            bottom: 10.h,
            left: 110.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(5, (int index) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  margin: EdgeInsets.symmetric(horizontal: 2.w),
                  height: 12.h,
                  width: _currentPage == index ? 36.w : 10.w,
                  decoration: BoxDecoration(
                    color: _currentPage == index ? Colors.orange : Colors.grey,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
