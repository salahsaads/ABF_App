// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:abf_app/core/app_color/AppColor.dart';
import 'package:abf_app/features/Home/presentation/view/widget/CustomList1.dart';
import 'package:abf_app/features/Home/presentation/view/widget/CustomListView.dart';
import 'package:abf_app/features/Home/presentation/view/widget/pageviewwithIndicator.dart';
import 'package:abf_app/features/Home/presentation/view_model/Item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CustomTitle.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 12,
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.w, right: 26.w),
            child: Row(
              children: [
                Container(
                  width: 41.0.w,
                  height: 41.0.w,
                  decoration: const BoxDecoration(
                    color: Color(
                        0xff1ABF00), // You can change this to any color you like
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset('assets/Group 175877.png'),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'search');
                  },
                  child: Container(
                    width: 41.0.w,
                    height: 41.0.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3,
                        color: const Color(0xff1d75b145),
                      ),
                      color: const Color(
                          0xffFFFFFF), // You can change this to any color you like
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                        child: Image.asset('assets/search-normal_broken.png')),
                  ),
                ),
                const Spacer(),
                Text(
                  'مرحبا , اسم المستخدم',
                  style: GoogleFonts.almarai(
                    textStyle:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 35,
          ),
          PageViewWithIndicator(),
          CustomListView(),
          const CustomTitle(
            title: 'الأكثر مبيعا',
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.w, right: 26.w),
            child: Row(
              children: [
                const Spacer(),
                Text(
                  'أكثر منتجاتنا تحقيقا للمبيعات',
                  style: GoogleFonts.almarai(
                    textStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff878383)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 35,
          ),
          Container(
            color: const Color(0xfff1f1f1), // Adjust opacity if needed

            child: Column(
              children: [
                const CustomList1(),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                const CustomTitle(
                  title: 'فتحات التكييف الألومنيوم',
                ),
                Padding(
                  padding: EdgeInsets.only(left: 26.w, right: 26.w),
                  child: Row(
                    children: [
                      const Spacer(),
                      Text(
                        'مبيعات فتحات التكييف الألومنيوم المتاحة لدينا',
                        style: GoogleFonts.almarai(
                          textStyle: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff878383)),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                const CustomList1(),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 35,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
