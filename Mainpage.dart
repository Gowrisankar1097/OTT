import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Login.dart';
class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  State<mainpage> createState() => _mainpageState();
}

List a=[
  "Watch on any device",
  "Download and go",
  "No pesky contracts"
];
List b=[
  "Stream on your phone, tablet,laptop, and TV without paying more",
  "Save your data,watch Offline on a plane,train,or submarine",
  "Join today, cancel anytime"
];
int _position=0;

class _mainpageState extends State<mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/rolex2.jpeg"),
                fit: BoxFit.fill)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            Padding(
              padding:  EdgeInsets.only(top: 10,left: 10),
              child: Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/R.png"),
                        fit:BoxFit.fill)),
              ),
            ),
            SizedBox(height: 150,),
            Center(
              child: Container(

                height: 400,
                width: 400,
                // decoration: BoxDecoration(border: Border.all()),
                child: Column(
                  children: [

                    CarouselSlider.builder(

                        options: CarouselOptions(

                          height: 350,
                          aspectRatio: 8/9,
                          viewportFraction: 1,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: false,
                          autoPlayInterval: const Duration(seconds: 2),
                          autoPlayAnimationDuration: const Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.3,
                          // onPageChanged: callbackFunction,
                          scrollDirection: Axis.horizontal,

                        ),



                        itemCount: a.length,
                        itemBuilder: (BuildContext context, int index, int pageViewIndex)
                        {
                          return

                            Center(
                              child: Container(

                                height: 304,
                                width: 450,
                                child: Column(

                                  children: [
                                    Padding(
                                      padding:  EdgeInsets.all(8.0),
                                      child: Text(a[index],style: TextStyle(fontSize: 35,color: Colors.orange),),
                                    ),
                                    SizedBox(height: 100,),
                                    Padding(
                                      padding:  EdgeInsets.all(8.0),
                                      child: Text(b[index],style: TextStyle(color: Colors.tealAccent),),
                                    ),

                                  ],
                                ),
                              ),
                            );

                        }


                    ),
                    // CarouselIndicator(
                    //   height: 5,
                    //   count: a.length,
                    //   index: _position,
                    // )
                    // DotsIndicator(dotsCount: a.length,
                    // position: _position.toDouble(),
                    //   decorator: DotsDecorator(
                    //     color: Colors.black87, // Inactive color
                    //     activeColor: Colors.redAccent,
                    //   ),
                    //     onTap: (pos) {
                    //       setState(() => _position = pos as int);
                    //     }
                    // )

                  ],
                ),




              ),
            ),
            SizedBox(height: 50,),
            Container(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  style:ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Login()),
                    );
                  },
                  child: Text("GET STARTED",style: GoogleFonts.lobster(color: Colors.black),)),
            )
          ],
        ),
      ),

    );
  }
}
