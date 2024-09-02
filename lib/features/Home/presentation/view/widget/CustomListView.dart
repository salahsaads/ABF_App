import 'package:abf_app/features/CustomItemScreen/presentation/view/CustomItemScreen.dart';
import 'package:abf_app/features/Home/presentation/view/widget/CustomItem.dart';
import 'package:abf_app/features/Home/presentation/view/widget/HomeBody.dart';
import 'package:abf_app/features/Home/presentation/view_model/Item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListView extends StatelessWidget {
  CustomListView({
    super.key,
  });

  List<ItemModel> list_items = [
    ItemModel(
        title: 'مكيف اسبلت',
        color: const Color(0xffD68426),
        image: 'assets/33770783_2207.q803.001.P.m012.c20 2.png'),
    ItemModel(
        title: 'مكيف جداري',
        color: const Color(0xff1D75B1),
        image: 'assets/33770783_2207.q803.001.P.m012.c20 1.png'),
    ItemModel(
        title: 'مكيف مخفي',
        color: const Color(0xffDD4242),
        image: 'assets/Mask Group 2368 1.png'),
    ItemModel(
        title: 'مكيف كاسيت',
        color: const Color(0xff27C341),
        image: 'assets/o522376v389_Air_Flux_1C_v1 1.png'),
    ItemModel(
        title: 'مكيف باكيج',
        color: const Color(0xff16C6DA),
        image:
            'assets/fda50a00-8de6-4094-b5aa-b97b8dde37cf-260x260-removebg-preview 1.png'),
    ItemModel(
        title: 'مكيف دولابي',
        color: const Color(0xff484693),
        image: 'assets/11.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 30.w,
          right: 30.w,
          top: 16.h,
          bottom: 16.h), // Optional padding around the grid
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 columns
          mainAxisSpacing: 7.h, // Spacing between rows
          crossAxisSpacing: 5.w, // Spacing between columns
          childAspectRatio: 177.w / 144.h, // Aspect ratio for each item
        ),
        itemCount: 6, // Number of items in the grid
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Customitemscreen(),
                  ));
            },
            child: CustomItem(
              item: list_items[index],
            ),
          );
        },
      ),
    );
  }
}
