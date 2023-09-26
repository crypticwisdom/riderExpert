import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rider_expert/layout/device_layout.dart';
// import 'package:rider_expert/utils/colors.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DeviceLayout(
      mobile: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(30.sp),
                child: Text(
                  "Enter your phone number to sign in",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                    color: Theme.of(context).colorScheme.primary
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButton(
                    items: [],
                    onChanged: (value) {},
                  ),
                  // TextField(keyboardType: TextInputType.phone),
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              ElevatedButton(
                onPressed: () {},

                child: Text(
                  "Sign In",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 13.sp
                  ),
                      
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.sp),
                  ),
                  backgroundColor: Theme.of(context).colorScheme.background,
                  padding: EdgeInsets.symmetric(
                    vertical: 11.sp,
                    horizontal: 80.sp,
                  ),
                ),
              ),
              SizedBox(height: 20.sp),
              const Text("OR"),
              SizedBox(height: 20.sp),
              ElevatedButton.icon(
                icon: SvgPicture.asset("assets/images/apple_logo.svg"),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                    padding: EdgeInsets.symmetric(
                        vertical: 8.sp, horizontal: 15.w)),
                label: Text(
                  "Continue with Apple",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 13.sp
                  ),
                ),
              ),
              SizedBox(height: 20.sp),
              ElevatedButton.icon(
                // ignore: deprecated_member_use
                icon: Image.asset(
                  "assets/images/google.png",
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  padding:  EdgeInsets.symmetric(
                    vertical: 8.sp,
                    horizontal: 15.w,
                  ),
                ),
                label: Text(
                  "Continue with Google",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 13.sp
                  ),
                ),
              ),
              SizedBox(height: 20.sp),
              ElevatedButton.icon(
                icon: SvgPicture.asset(
                  "assets/images/facebook.svg",
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                    padding: EdgeInsets.symmetric(
                  vertical: 8.sp,
                  horizontal: 13.w,
                )),
                label: Text(
                  "Continue with Facebook",
                  
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 13.sp
                  ),
                ),
              ),
            ],
          ),
        ),
        // backgroundColor: Colors.red,
      ),
      tablet: Scaffold(
        body: Text("tablet"),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
