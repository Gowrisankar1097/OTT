import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled2/video.dart';


class Tamil2 extends StatefulWidget {
  const Tamil2({Key? key}) : super(key: key);

  @override
  State<Tamil2> createState() => _Tamil2State();
}

class _Tamil2State extends State<Tamil2> {
  List a=[
    "assets/PS2.jpeg",
    "assets/Veeran.jpeg",
    "assets/Pichaikaran.jpeg",
    "assets/Goodni8.jpeg",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            Card(
              elevation: 10,
              color: Colors.black,
              shadowColor: Colors.white,
              child: Container(

                height: 260,
                width: double.infinity,
                // decoration: BoxDecoration(border: Border.all()),
                child: CarouselSlider.builder(

                    options: CarouselOptions(

                      height: 500,
                      aspectRatio: 8/9,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
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

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,

                          children: [
                            new GestureDetector(
                              onTap:(){
                                List a=[];Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SamplePlayer(),
                                  ),
                                );
                              }
                              ,
                              child: Container(

                                height: 250,
                                width: 400,
                                decoration: BoxDecoration(

                                    image: DecorationImage(image: AssetImage(a[index]),fit: BoxFit.fill)
                                ),
                              ),
                            ),

                            //  Text(b[index],style: TextStyle(fontSize: 20),),


                          ],


                        );

                    }


                ),



              ),
            ),
            SizedBox(height: 20,),
            Text("Recently added",
                style: GoogleFonts.lato(
                    color: Colors.lightBlueAccent,
                    fontStyle: FontStyle.italic)),
            Container(
              height: 220,

              child: ListView.builder(
                  scrollDirection:Axis.horizontal,
                  itemCount: a.length,
                  itemBuilder: (BuildContext context,int index)

                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(

                            height: 200,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(image: AssetImage(a[index]),fit: BoxFit.fill),

                            ),

                          ),
                          // Expanded(child: Text(b[index])),
                        ],
                      ),
                    );



                  }






              ),

            ),
            Text("Watching",
              style: GoogleFonts.lato(
                  fontStyle: FontStyle.italic,
                  color: Colors.lightBlueAccent)),
            Container(
              height: 220,

              child: ListView.builder(
                  scrollDirection:Axis.horizontal,
                  itemCount: a.length,
                  itemBuilder: (BuildContext context,int index)

                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(

                            height: 200,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(image: AssetImage(a[index]),fit: BoxFit.fill),

                            ),

                          ),
                          // Expanded(child: Text(b[index])),
                        ],
                      ),
                    );



                  }






              ),

            ),
            Text("Hollywood", style: GoogleFonts.lato(
                color: Colors.lightBlueAccent,
                fontStyle: FontStyle.italic)),
            Container(
              height: 220,

              child: ListView.builder(
                  scrollDirection:Axis.horizontal,
                  itemCount: a.length,
                  itemBuilder: (BuildContext context,int index)

                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(

                            height: 200,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(image: AssetImage(a[index]),fit: BoxFit.fill),

                            ),

                          ),
                          // Expanded(child: Text(b[index])),
                        ],
                      ),
                    );



                  }






              ),

            ),
          ],
        ),
      ),
    );
  }
}
