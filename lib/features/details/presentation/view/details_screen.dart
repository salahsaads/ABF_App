import 'package:abf_app/core/app_color/AppColor.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.white,
      body: Padding(
        padding: EdgeInsets.only(left: 25.w, right: 25.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .09,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite_outline_rounded),
                  Text(
                    'تفاصيل المنتج',
                    style: GoogleFonts.almarai(
                        textStyle: TextStyle(
                            fontSize: 17.sp, fontWeight: FontWeight.w800)),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Color(0xff1D75B1),
                  )
                ],
              ),
              PageViewWithIndicator(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 70.w,
                    height: 65.h,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      image: DecorationImage(
                          image: AssetImage(
                        'assets/44.png',
                      )),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                  ),
                  Container(
                    width: 75.w,
                    height: 65.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                          'assets/444.png',
                        )),
                        borderRadius: BorderRadius.circular(15.r),
                        color: Color(0xfff4f4f4)),
                  ),
                  Container(
                    width: 75.w,
                    height: 65.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                          'assets/4444.png',
                        )),
                        borderRadius: BorderRadius.circular(15.r),
                        color: Color(0xfff4f4f4)),
                  ),
                  Container(
                    width: 75.w,
                    height: 65.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                          'assets/44445.png',
                        )),
                        borderRadius: BorderRadius.circular(15.r),
                        color: Color(0xfff4f4f4)),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'مكيف كاسيت جري 1.5 حصان',
                    style: GoogleFonts.almarai(
                      textStyle: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '(4.3)',
                    style: GoogleFonts.almarai(
                        textStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xffD3A100))),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  StarRating(
                    initialRating: 4.3,
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * .05,
                  ),
                  Image.asset('assets/icon.png'),
                ],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .02,
              ),
              Text(
                textAlign: TextAlign.end,
                'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف.عوضاً عن استخدام "هنا يوجد محتوى نصي، هنا يوجد محتوى نصي" فتجعلها تبدو ',
                style: GoogleFonts.almarai(
                    textStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w300,
                        color: const Color(0xff8A8A8A))),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    ' ر.س 780.000',
                    style: GoogleFonts.almarai(
                        textStyle: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xffCA7009))),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Radio(value: 1, groupValue: 4, onChanged: (b00) {}),
                          Text(
                            ' 10 متر نحاس  \n+توريد وتركيب ',
                            style: GoogleFonts.almarai(
                                textStyle: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                            )),
                          ),
                          Text(
                            ' 850 ر.س',
                            style: GoogleFonts.almarai(
                                textStyle: TextStyle(
                              fontSize: 11.sp,
                              color: Color(0xffCA7009),
                              fontWeight: FontWeight.w400,
                            )),
                          )
                        ],
                      ),
                    ),
                    width: 100.w,
                    height: 104.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: Color(0xff1D75B1))),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Radio(value: 1, groupValue: 4, onChanged: (b00) {}),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'توريد وتركيب\n بدون نحاسب ',
                                style: GoogleFonts.almarai(
                                    textStyle: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                )),
                              ),
                            ],
                          ),
                          Text(
                            ' 500 ر.س',
                            style: GoogleFonts.almarai(
                                textStyle: TextStyle(
                              fontSize: 11.sp,
                              color: Color(0xffCA7009),
                              fontWeight: FontWeight.w400,
                            )),
                          ),
                        ],
                      ),
                    ),
                    width: 100.w,
                    height: 104.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: Color(0xff1D75B1))),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Radio(value: 4, groupValue: 4, onChanged: (b00) {}),
                          Text(
                            'توريد فقط ',
                            style: GoogleFonts.almarai(
                                textStyle: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff1D75B1),
                            )),
                          ),
                          Text(
                            'لا يوجد سعر اضافي',
                            style: GoogleFonts.almarai(
                                textStyle: TextStyle(
                              fontSize: 11.sp,
                              color: Color(0xffCA7009),
                              fontWeight: FontWeight.w400,
                            )),
                          )
                        ],
                      ),
                    ),
                    width: 100.w,
                    height: 104.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color(0xffeff5f9)),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .05,
              ),
              Text(
                'حدد الكمية المطلوبة',
                style: GoogleFonts.almarai(
                    textStyle: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                )),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Icon(Icons.remove),
                    width: 30.w,
                    height: 30.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        border: Border.all(color: Color(0xff9a9c9f))),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * .05,
                  ),
                  Text('1',
                      style: GoogleFonts.almarai(
                          textStyle: TextStyle(
                        fontSize: 29.sp,
                        fontWeight: FontWeight.w700,
                      ))),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * .05,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.add,
                      color: Color(0xff1D75B1),
                    ),
                    width: 30.w,
                    height: 30.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        border: Border.all(color: Color(0xff1D75B1))),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .02,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'إضافة إلى عربة التسوق',
                      style: GoogleFonts.almarai(
                          textStyle: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffffffff))),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * .01,
                    ),
                    Image.asset('assets/shopping-cart.png')
                  ],
                ),
                width: double.infinity,
                height: 74.h,
                decoration: BoxDecoration(
                    color: Color(0xff1D75B1),
                    borderRadius: BorderRadius.circular(38.r)),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'تقييمات المنتج',
                    style: GoogleFonts.almarai(
                        textStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff000000))),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * .01,
                  ),
                  Icon(Icons.star, color: Colors.amber, size: 25.0),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'عرض لجميع التقييمات على هذا المنتج',
                    style: GoogleFonts.almarai(
                        textStyle: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff878383))),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .02,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class StarRating extends StatefulWidget {
  final int maxRating;
  final double initialRating;
  final void Function(double rating)? onRatingChanged;

  StarRating(
      {this.maxRating = 5, this.initialRating = 0, this.onRatingChanged});

  @override
  _StarRatingState createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  double _currentRating = 0.0;

  @override
  void initState() {
    super.initState();
    _currentRating = widget.initialRating;
  }

  Widget _buildStar(int index) {
    Icon icon;
    if (index >= _currentRating) {
      icon = Icon(Icons.star_border, color: Colors.amber, size: 25.0);
    } else if (index > _currentRating - 1 && index < _currentRating) {
      icon = Icon(Icons.star_half, color: Colors.amber, size: 25.0);
    } else {
      icon = Icon(Icons.star, color: Colors.amber, size: 25.0);
    }

    return GestureDetector(
      onTap: () {
        setState(() {
          _currentRating = index + 1.0;
        });
        if (widget.onRatingChanged != null) {
          widget.onRatingChanged!(_currentRating);
        }
      },
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(widget.maxRating, (index) => _buildStar(index)),
    );
  }
}

class PageViewWithIndicator extends StatefulWidget {
  @override
  _PageViewWithIndicatorState createState() => _PageViewWithIndicatorState();
}

class _PageViewWithIndicatorState extends State<PageViewWithIndicator> {
  int _currentPage = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(38.r),
          ),
          width: double.infinity,
          height: 250.h,
          child: PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 150.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: Image.asset('assets/details.png').image),
                  borderRadius: BorderRadius.circular(38.r),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: Image.asset('assets/details.png').image),
                  borderRadius: BorderRadius.circular(38.r),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: Image.asset('assets/details.png').image),
                  borderRadius: BorderRadius.circular(38.r),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: Image.asset('assets/details.png').image),
                  borderRadius: BorderRadius.circular(38.r),
                ),
              ),
            ],
          ),
        ),
        // Add some spacing between PageView and Indicator
        Positioned(
          bottom: 25.h,
          left: 110.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List<Widget>.generate(4, (int index) {
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
    );
  }
}
