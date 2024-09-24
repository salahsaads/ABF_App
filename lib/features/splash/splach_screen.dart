import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:abf_app/features/splash/widget/splach_body.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool? logedin;

  @override
  void initState() {
    super.initState();
    _checkAndNavigate();
  }

  // Function to check login status and navigate accordingly
  Future<void> _checkAndNavigate() async {
    await checkUser(); // Wait for the login check to complete

    // After a delay, navigate based on login status
    Future.delayed(const Duration(seconds: 5), () {
      if (logedin == true) {
        Navigator.pushNamedAndRemoveUntil(
            context, 'Home', (Route<dynamic> route) => false);
      } else {
        Navigator.pushNamedAndRemoveUntil(
            context, 'Login', (Route<dynamic> route) => false);
      }
    });
  }

  // Function to check login status from SharedPreferences
  Future<void> checkUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      logedin = prefs.getBool('user') ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: splach_body(),
    );
  }
}
