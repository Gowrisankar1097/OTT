import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.black, Colors.redAccent])),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100,),
              Center(child: Text("User Profile",
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),)),
              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  child: Icon(Icons.image_search_sharp,size: 200,color: Colors.red,)
                ),
              ),

              SizedBox(height: 50,),
              TextFormField(
                  decoration:
                  InputDecoration(
                  focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                  color: Colors.red,
                  ),
                  ),
                  hintText: "Enter your Name:",
                  labelText: "Name:",
                  icon: Icon(Icons.person,color: Colors.black,size: 50,),
                ),),
              SizedBox(height: 50,),
              TextFormField(
                decoration:
                InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  hintText: "Enter your Mailid:",
                  labelText: "MailId:",
                  icon: Icon(Icons.mail,color: Colors.black,size: 50,),
                ),),
              SizedBox(height: 50,),
              TextFormField(
                decoration:
                InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  hintText: "Enter your Age:",
                  labelText: "Age:",
                  icon: Icon(Icons.timer,color: Colors.black,size: 50,),
                ),),
              SizedBox(height: 50,),
              ElevatedButton(onPressed: (){}, child: Text("SUBMIT"))
            ],
          ),
        ),
      ),
    );
  }
}
