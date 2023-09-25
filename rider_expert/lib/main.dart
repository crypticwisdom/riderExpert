import 'package:flutter/material.dart';
import 'package:rider_expert/screens/splash_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

var kLightColorScheme = ColorScheme.fromSeed(
    seedColor: Colors.deepPurple, brightness: Brightness.light);

var kDarkColorScheme = ColorScheme.fromSeed(
    seedColor: Colors.deepPurple, brightness: Brightness.dark);

void main() {
  runApp(Sizer(builder: (context, orientation, deviceType) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kLightColorScheme,
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      darkTheme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kDarkColorScheme,
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      themeMode: ThemeMode.system,
    );
  }));
}
