import 'package:abf_app/core/app_color/AppColor.dart';
import 'package:abf_app/features/splash/widget/splach_body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushNamedAndRemoveUntil(
          context, 'Login', (Route<dynamic> route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: splach_body(),
    );
  }
}
