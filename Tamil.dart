import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:untitled2/page1.dart';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:untitled2/profile.dart';


import 'Tamil2.dart';
class Tamil extends StatefulWidget {
  const Tamil({Key? key}) : super(key: key);

  @override
  State<Tamil> createState() => _TamilState();
}

class _TamilState extends State<Tamil> {
      int a=0;
  final Page=
  [
    Tamil2(),
    Center(child: Text("No   Downloads",style: GoogleFonts.monoton(color: Colors.red,fontSize: 25),)),
    profile(),




  ];
      List<IconData> iconList = [ //list of icons that required by animated navigation bar.
        Icons.home,
        Icons.download,
        Icons.person,

      ];
  void tap(index)
  {
    setState(() {
      a=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: Page[a],
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,

        bottomNavigationBar:
        AnimatedBottomNavigationBar(
        //backgroundColor: Colors.red,
        // items: [

          icons: iconList, //list of icons
          activeIndex: a,
          gapLocation: GapLocation.none,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          //onTap: (index) => setState(() => a = index),
          backgroundColor: Colors.grey,




    onTap: tap,
        ),
    );
  }
}
