import 'package:abf_app/features/splash/widget/splach_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/Code verification/presentation/view/Code_verification_screen.dart';
import 'features/Complete_the_data/presentation/view/Complete_the_data_screen.dart';
import 'features/Confirm password/presentation/view/Confirm_password_screen.dart';
import 'features/Home/presentation/view/Home.dart';
import 'features/Login/presentation/view/login.dart';
import 'features/Register/presentation/view/RegisterScreen.dart';
import 'features/Request a quote/presentation/view/requset_screen.dart';
import 'features/Search/presentation/view/SearchScreen.dart';
import 'features/details/presentation/view/details_screen.dart';
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
            home: const SplashScreen(),
            routes: {
              '/splash': (context) => const SplashScreen(),
              'Login': (context) => const Login(),
              'ForgotPassword': (context) => const ForgotPassword(),
              'Register': (context) => const RegisterScreen(),
              'Home': (context) => const Home(),
              'RequsetScreen': (context) => const RequsetScreen(),
              'details': (context) => const DetailsScreen(),
              'search': (context) => const Searchscreen(),
            },
          );
        });
  }
}
