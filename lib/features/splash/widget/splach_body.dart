
import 'package:flutter/material.dart';

import '../../../core/app_color/AppColor.dart';

class splach_body extends StatelessWidget {
  const splach_body({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      // ignore: sort_child_properties_last
      child: const Image(image: AssetImage('assets/Mask Group 2412 1.png')),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
            Appcolor.SplachColor1,
            Appcolor.SplachColor1,
            Appcolor.SplachColor2,
            Appcolor.SplachColor2
          ])),
    );
  }
}
