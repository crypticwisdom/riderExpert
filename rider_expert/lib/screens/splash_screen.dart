import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rider_expert/screens/login_screen.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return const LoginScreen();
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "TM30",
            style: TextStyle(color: Colors.lightBlue, fontSize: 90.sp),
          )
          // Image.asset(
          //   // "assets/images/rider_expert_logo.png",
          //   // width: 100.h,
          // ),
        ],
      ),
    ));
  }
}
