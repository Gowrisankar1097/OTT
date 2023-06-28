import 'package:flutter/material.dart';
import 'package:untitled2/Login.dart';
class newuser extends StatefulWidget {
  const newuser({Key? key}) : super(key: key);

  @override
  State<newuser> createState() => _newuserState();
}

class _newuserState extends State<newuser> {
  final key=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.purple, Colors.orange])),
          child: SafeArea(
            top: true,
            bottom: true,
            right: true,
            left: true,
            child: Form(
              key:key,
              child:   Column(
                  children: [
                    SizedBox(height: 100,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        // validator: (value) {
                        //   if (value!.isEmpty ||
                        //       RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value))
                        //
                        //   {
                        //     return 'Please enter valid emailid';
                        //   }
                        // },
                        decoration:
                        InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: "Enter your Name:",
                          labelText: "Name:",
                          icon: Icon(Icons.person),

                        ),),
                    ),
                    SizedBox(height: 50,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        // validator: (va) {
                        //   if(va!.isEmpty ||
                        //       RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        //           .hasMatch(va))
                        //   {
                        //     return 'Enter your correct password';
                        //   }
                        //
                        //
                        // },
                        decoration:
                        InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: "Enter your Password",
                          labelText: "Password",
                          icon: Icon(Icons.wifi),

                        ),
                      ),

                    ),
                    SizedBox(height: 50,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration:
                        InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: "ReEnter your Password",
                          labelText: "Password",
                          icon: Icon(Icons.key),

                        ),
                      ),
                    ),
                    SizedBox(height: 50,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration:
                        InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: "Enter MobileNo",
                          labelText: "MobileNo",
                          icon: Icon(Icons.phone_android_outlined),

                        ),
                      ),
                    ),
                    SizedBox(height: 50,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration:
                        InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: "Enter OTP",
                          labelText: "OTP",
                          icon: Icon(Icons.key_off),

                        ),
                      ),
                    ),

                    SizedBox(height: 20,),
                    ElevatedButton(style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink
                    ),
                        onPressed: (){
                          if(key.currentState!.validate())
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Login()),
                            );

                          }




                        }, child: Text("SignIn")),



                  ],
                ),
              ),
            ),
        ),

    );
  }
}
