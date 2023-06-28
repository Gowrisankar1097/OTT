import 'package:flutter/material.dart';





import 'package:untitled2/splash.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'Tamil.dart';
import 'Tamil2.dart';
import 'language.dart';







void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(
          child,
          maxWidth: 1200,
          minWidth: 480,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(600, name: MOBILE),
            ResponsiveBreakpoint.resize(600, name: TABLET),
            ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(600, name: MOBILE),
            ResponsiveBreakpoint.autoScale(600, name: TABLET),
            ResponsiveBreakpoint.autoScale(1200, name: DESKTOP),
          ],
          background: Container(color: Color(0xFFF5F5F5))),

      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home:splash1(),
    );
  }
}

