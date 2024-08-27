import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/Login/presentation/view/login.dart';
import 'features/forgot password/presentation/view/forgot_password.dart';
import 'features/splash/splach_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp(
            home: SplashScreen(),
            routes: {
              '/splash': (context) => SplashScreen(),
              'Login': (context) => const Login(),
              'ForgotPassword': (context) => const ForgotPassword(),
            },
          );
        });
  }
}
