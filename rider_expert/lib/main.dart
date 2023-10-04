import 'package:flutter/material.dart';
import 'package:rider_expert/screens/splash_screen.dart';
import 'package:rider_expert/utils/colors.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

// You can specify all Themes in each WidgetTheme settings ... AppBarTheme
var kLightTheme= ThemeData(
  useMaterial3: true,
brightness: Brightness.light,
colorScheme: ColorScheme.light(
  background: Colors.white,
  primary: AppColors.black,
  secondary: AppColors.oxBlood,
)
);

var kDarkTheme= ThemeData(
    useMaterial3: true, 
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      background: AppColors.black,
      primary: AppColors.white,
      secondary: AppColors.oxBlood,
    )
);


void main() {
  runApp(Sizer(builder: (context, orientation, deviceType) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: kLightTheme,
      darkTheme: kDarkTheme,
      themeMode: ThemeMode.system,
    );
  }));
}
