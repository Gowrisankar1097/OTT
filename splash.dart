import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:untitled2/page1.dart';

import 'Mainpage.dart';


class splash1 extends StatelessWidget {
  const splash1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Colors.black,
        splash:"assets/R.png",

        nextScreen: page1(),
        splashTransition: SplashTransition.rotationTransition,
        pageTransitionType: PageTransitionType.fade,
    );
  }
}
