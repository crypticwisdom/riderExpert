import 'package:flutter/material.dart';
import 'package:rider_expert/screens/splash_screen.dart';
import 'package:rider_expert/utils/colors.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

var kLightColorScheme = const ColorScheme(
  brightness: Brightness.light,
  background: AppColors.white,
  onBackground: Color.fromARGB(253, 214, 214, 214),
  primary: AppColors.black,
  onPrimary: Colors.black,
  secondary: AppColors.oxBlood,
  onSecondary:  Color.fromARGB(255, 40, 10, 10),
  error: AppColors.red,
  onError:  Color.fromARGB(255, 241, 114, 110),
  surface: Color.fromARGB(255, 255, 255, 255),
  onSurface: Color.fromARGB(255, 153, 152, 152),
    );

var kDarkColorScheme = const ColorScheme(
      brightness: Brightness.dark,
  background: AppColors.black,
  onBackground: Color.fromARGB(253, 214, 214, 214),
  primary: AppColors.white,
  onPrimary: Colors.black,
  secondary: AppColors.oxBlood,
  onSecondary:  Color.fromARGB(255, 40, 10, 10),
  error: AppColors.red,
  onError:  Color.fromARGB(255, 241, 114, 110),
  surface: Color.fromARGB(255, 255, 255, 255),
  onSurface: Color.fromARGB(255, 153, 152, 152),
    );

void main() {
  runApp(Sizer(builder: (context, orientation, deviceType) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kLightColorScheme,
        textTheme: GoogleFonts.latoTextTheme(
          TextTheme(
            titleSmall: TextStyle(color: AppColors.primary,),
          )
        ),
      ),
      darkTheme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kDarkColorScheme,
        textTheme: GoogleFonts.latoTextTheme(
          // TextTheme(
          //   // titleSmall: TextStyle(color: AppColors.primary,),
          //   // titleSmall: TextStyle(color: AppColors.primary,),
          // )
        ),
        scaffoldBackgroundColor: AppColors.oxBlood
      ),
      themeMode: ThemeMode.system,
    );
  }));
}
