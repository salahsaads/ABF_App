import 'package:abf_app/core/app_color/AppColor.dart';
import 'package:abf_app/features/CustomItemScreen/presentation/view/widget/CustomItem.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Customitembody extends StatefulWidget {
  const Customitembody({super.key});

  @override
  State<Customitembody> createState() => _CustomitembodyState();
}

class _CustomitembodyState extends State<Customitembody> {
  int _selectedValue = 0;
  int _selectedValue2 = 0; // Initial selected value

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 45.h),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  showMaterialModalBottomSheet(
                    backgroundColor: Appcolor.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.r),
                      topRight: Radius.circular(40.r),
                    )),
                    context: context,
                    builder: (context) => Container(
                      // ignore: sort_child_properties_last
                      child: Padding(
                        padding: EdgeInsets.only(left: 24.w, right: 24.w),
                        child: Column(children: [
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height * .05,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'فلترة النتائج',
                                style: GoogleFonts.almarai(
                                    textStyle: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w800,
                                        color: const Color(0xff000000))),
                              ),
                              SizedBox(
                                  width: 5
                                      .w), // Add some spacing between the widgets
                              Image.asset('assets/filter-edit_linear.png'),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height / 35,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'فلترة حسب النوع',
                                style: GoogleFonts.almarai(
                                  textStyle: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xff878383)),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height / 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                          'assets/Clip path group (1).png'),
                                      Checkbox(
                                        activeColor: const Color(
                                            0xffCA7009), // Checked color
                                        value: false,
                                        onChanged: (bool? value) {},
                                        side: const BorderSide(
                                          color: Color(
                                              0xffB1B1B1), // Border color when not checked
                                          width: 1, // Border width
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                          'assets/Clip path group (4).png'),
                                      Checkbox(
                                        activeColor: const Color(
                                            0xffCA7009), // Checked color
                                        value: false,
                                        onChanged: (bool? value) {
                                          setState(() {});
                                        },
                                        side: const BorderSide(
                                          color: Color(
                                              0xffB1B1B1), // Border color when not checked
                                          width: 1, // Border width
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset('assets/3.png'),
                                      Checkbox(
                                        activeColor: const Color(
                                            0xffCA7009), // Checked color
                                        value: false,
                                        onChanged: (bool? value) {
                                          setState(() {});
                                        },
                                        side: const BorderSide(
                                          color: Color(
                                              0xffB1B1B1), // Border color when not checked
                                          width: 1, // Border width
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  )
                                ],
                              ),

////////////////////////////////////////////////
                              ///

                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset('assets/Clip path group.png'),
                                      Checkbox(
                                        activeColor: const Color(
                                            0xffCA7009), // Checked color
                                        value: false,
                                        onChanged: (bool? value) {
                                          setState(() {});
                                        },
                                        side: const BorderSide(
                                          color: Color(
                                              0xffB1B1B1), // Border color when not checked
                                          width: 1, // Border width
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                          'assets/Clip path group (3).png'),
                                      Checkbox(
                                        activeColor: const Color(
                                            0xffCA7009), // Checked color
                                        value: false,
                                        onChanged: (bool? value) {
                                          setState(() {});
                                        },
                                        side: const BorderSide(
                                          color: Color(
                                              0xffB1B1B1), // Border color when not checked
                                          width: 1, // Border width
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset('assets/4.png'),
                                      Checkbox(
                                        activeColor: const Color(
                                            0xffCA7009), // Checked color
                                        value: false,
                                        onChanged: (bool? value) {
                                          setState(() {});
                                        },
                                        side: const BorderSide(
                                          color: Color(
                                              0xffB1B1B1), // Border color when not checked
                                          width: 1, // Border width
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset('assets/2.png'),
                                      Checkbox(
                                        activeColor: const Color(
                                            0xffCA7009), // Checked color
                                        value: false,
                                        onChanged: (bool? value) {
                                          setState(() {});
                                        },
                                        side: const BorderSide(
                                          color: Color(
                                              0xffB1B1B1), // Border color when not checked
                                          width: 1, // Border width
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              //////////////////////
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset('assets/icon.png'),
                                      Checkbox(
                                        activeColor: const Color(
                                            0xffCA7009), // Checked color
                                        value: false,
                                        onChanged: (bool? value) {
                                          setState(() {});
                                        },
                                        side: const BorderSide(
                                          color: Color(
                                              0xffB1B1B1), // Border color when not checked
                                          width: 1, // Border width
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                          'assets/Clip path group (2).png'),
                                      Checkbox(
                                        activeColor: const Color(
                                            0xffCA7009), // Checked color
                                        value: false,
                                        onChanged: (bool? value) {
                                          setState(() {});
                                        },
                                        side: const BorderSide(
                                          color: Color(
                                              0xffB1B1B1), // Border color when not checked
                                          width: 1, // Border width
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset('assets/5.png'),
                                      Checkbox(
                                        activeColor: const Color(
                                            0xffCA7009), // Checked color
                                        value: false,
                                        onChanged: (bool? value) {
                                          setState(() {});
                                        },
                                        side: const BorderSide(
                                          color: Color(
                                              0xffB1B1B1), // Border color when not checked
                                          width: 1, // Border width
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset('assets/1.png'),
                                      Checkbox(
                                        activeColor: const Color(
                                            0xffCA7009), // Checked color
                                        value: false,
                                        onChanged: (bool? value) {
                                          setState(() {});
                                        },
                                        side: const BorderSide(
                                          color: Color(
                                              0xffB1B1B1), // Border color when not checked
                                          width: 1, // Border width
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height * .01,
                          ),
                          const Divider(),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height * .01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                ' حسب المبيعات',
                                style: GoogleFonts.almarai(
                                  textStyle: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xff878383)),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'المنتجات الأكثر مبيعا',
                                style: GoogleFonts.almarai(
                                    textStyle: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff25170B))),
                              ),
                              Checkbox(
                                activeColor:
                                    const Color(0xffCA7009), // Checked color
                                value: false,
                                onChanged: (bool? value) {
                                  setState(() {});
                                },
                                side: const BorderSide(
                                  color: Color(
                                      0xffB1B1B1), // Border color when not checked
                                  width: 1, // Border width
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height * .01,
                          ),
                          const Divider(),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height * .01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'حسب السعر',
                                style: GoogleFonts.almarai(
                                  textStyle: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xff878383)),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween, // Space between the options
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'من الأعلى إلى الأقل سعرا',
                                    style: GoogleFonts.almarai(
                                      textStyle: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400,
                                          color: _selectedValue == 1
                                              ? const Color(0xff25170B)
                                              : const Color(0xff1D75B1)),
                                    ),
                                  ),
                                  Radio(
                                    value: 0,
                                    groupValue: _selectedValue,
                                    onChanged: (int? value) {
                                      setState(() {
                                        _selectedValue = value!;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'من الأقل إلى الأعلى سعرا',
                                    style: GoogleFonts.almarai(
                                      textStyle: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400,
                                          color: _selectedValue == 0
                                              ? const Color(0xff25170B)
                                              : const Color(0xff1D75B1)),
                                    ),
                                  ),
                                  Radio(
                                    value: 1,
                                    groupValue: _selectedValue,
                                    onChanged: (int? value) {
                                      setState(() {
                                        _selectedValue = value!;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height * .01,
                          ),
                          const Divider(),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height * .01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                ' حسب التقييم',
                                style: GoogleFonts.almarai(
                                  textStyle: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xff878383)),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween, // Space between the options
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'من الأعلى إلى الأقل تقييما',
                                    style: GoogleFonts.almarai(
                                      textStyle: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400,
                                          color: _selectedValue == 1
                                              ? const Color(0xff25170B)
                                              : const Color(0xff1D75B1)),
                                    ),
                                  ),
                                  Radio(
                                    value: 0,
                                    groupValue: _selectedValue2,
                                    onChanged: (int? value) {
                                      setState(() {
                                        _selectedValue2 = value!;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'من الأقل إلى الأعلى تقييما',
                                    style: GoogleFonts.almarai(
                                      textStyle: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400,
                                          color: _selectedValue2 == 0
                                              ? const Color(0xff25170B)
                                              : const Color(0xff1D75B1)),
                                    ),
                                  ),
                                  Radio(
                                    value: 1,
                                    groupValue: _selectedValue2,
                                    onChanged: (int? value) {
                                      setState(() {
                                        _selectedValue2 = value!;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            height: 65.h,
                            decoration: BoxDecoration(
                                color: const Color(0xff1D75B1),
                                borderRadius: BorderRadius.circular(35.r)),
                            child: Text(
                              'فلترة',
                              style: GoogleFonts.almarai(
                                textStyle: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xffffffff)),
                              ),
                            ),
                          )
                        ]),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.r),
                        topRight: Radius.circular(40.r),
                      )),
                      height: MediaQuery.sizeOf(context).height * .85,
                    ),
                  );
                },
                child: Text(
                  'فلترة النتائج  ',
                  style: GoogleFonts.almarai(
                    textStyle: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff878383)),
                  ),
                ),
              ),
              SizedBox(width: 5.w), // Add some spacing between the widgets
              Image.asset('assets/filter-edit_linear.png'),
              const Spacer(),
              Text(
                'مكيف جداري',
                style: GoogleFonts.almarai(
                  textStyle: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w800,
                      color: const Color(0xff000000)),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_forward,
                  color: Color(0xff1D75B1),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h), // Add some spacing between the row and grid
          Expanded(
            // Wrap GridView.builder in Expanded to allow it to take remaining space
            child: Stack(
              children: [
                GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of items per row
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                    childAspectRatio: 177 / 354, // Item width to height ratio
                  ),
                  itemBuilder: (context, index) {
                    return const Custom_Item();
                  },
                  itemCount: 10, // Number of items in the grid
                ),
                Positioned(
                  bottom: 40.h,
                  left: 40.w,
                  child: Container(
                    width: 281.0, // Width of the button
                    height: 76.0, // Height of the button
                    decoration: BoxDecoration(
                      color: const Color(
                          0xFF1D75B1), // Background color with opacity
                      borderRadius: BorderRadius.circular(33.r),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        const BoxShadow(
                          color: Color(0xFF1D75B1), // Shadow color with opacity
                          spreadRadius: 0,
                          blurRadius: 20,
                          offset: Offset(0, 11), // Shadow position
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.transparent, // Transparent background
                          shadowColor: Colors
                              .transparent, // No extra shadow from the button itself
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(38.0),
                              topRight: Radius.circular(0.0),
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(0.0),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'RequsetScreen');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'طلب عرض سعر',
                              style: GoogleFonts.almarai(
                                textStyle: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ),
                            Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20.h,
                            )
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
