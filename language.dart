import 'package:flutter/material.dart';


import 'Tamil.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      right: true,
      left: true,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "SELECT YOUR LANGUAGE",
            style: TextStyle(color: Colors.greenAccent),
          ),
        ),
        body:
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration( gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.black, Colors.redAccent])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),

              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 80,
                  width: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/R.png"),
                          fit:BoxFit.fill)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Container(
                        height: 150,
                        width: 190,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/Tamil.jpeg",),fit: BoxFit.fill)),
                        child:GestureDetector(
                          onTap: ()
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  Tamil()),
                            );
                          },
                        )
                        // IconButton(
                        //   icon: Image.asset("assets/Tamil.jpeg",fit: BoxFit.fill,),
                        //   iconSize: 50,
                        //   onPressed: () {
                        //     Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (context) => const Tamil()),
                        //     );
                        //   },
                        // )
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 150,
                          width: 190,
                          child: IconButton(
                            icon: Image.asset("assets/English.jpeg",fit: BoxFit.fill,),
                            iconSize: 50,
                            onPressed: () {},
                          )),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Container(
                        height: 200,
                        width: 190,
                        child: IconButton(
                          icon: Image.asset("assets/Malayalam.jpeg"),
                          iconSize: 50,
                          onPressed: () {},
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 200,
                          width: 190,
                          child: IconButton(
                            icon: Image.asset("assets/Kannada.jpeg"),
                            iconSize: 50,
                            onPressed: () {},
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Container(
                        height: 200,
                        width: 190,
                        child: IconButton(
                          icon: Image.asset("assets/Hindi.jpeg"),
                          iconSize: 50,
                          onPressed: () {},
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 200,
                          width: 190,
                          child: IconButton(
                            icon: Image.asset("assets/Telungu.jpeg"),
                            iconSize: 50,
                            onPressed: () {},
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
