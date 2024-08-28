import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 12,
        ),
        Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w),
          child: Row(
            children: [
              Container(
                width: 41.0.w,
                height: 41.0.w,
                decoration: BoxDecoration(
                  color: Color(
                      0xff1ABF00), // You can change this to any color you like
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    'Text', // You can place any widget here
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 41.0.w,
                height: 41.0.w,
                decoration: BoxDecoration(
                  color:
                      Colors.blue, // You can change this to any color you like
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    'Text', // You can place any widget here
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
