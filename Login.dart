import 'package:flutter/material.dart';


import 'Newuser.dart';
import 'language.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body:Form(
            key: _key,
            child: Container(
              height: double.infinity,
              width: 650,

              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/rolex2.jpeg"),
                      fit: BoxFit.fill)
              ),
              child:   SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50,),
                    Container(
                      height: 130,
                      width: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/R.png"),
                              fit: BoxFit.fill)),
                    ),

                    SizedBox(height: 100,),
                    Center(
                      child: Container(
                        height: 350,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.white38,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20)) ,
                        child: Column(
                          children: [
                            SizedBox(height: 30,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty ||
                                      RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value))

                                  {
                                    return 'Please enter valid emailid';
                                  }
                                },
                                decoration:
                                InputDecoration(

                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                    ),
                                  ),
                                  hintText: "Enter your MobileNo:",
                                  labelText: "MobileNo:",
                                  icon: Icon(Icons.person,color: Colors.white,size: 50,),

                                ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                validator: (va) {
                                  if(va!.isEmpty ||
                                      RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                          .hasMatch(va))
                                  {
                                    return 'Enter your correct password';
                                  }


                                },
                                decoration:
                                InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                    ),
                                  ),
                                  hintText: "Enter your Password",
                                  labelText: "Password",
                                  icon: Icon(Icons.key,color: Colors.white,size: 50,),

                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                                onPressed: (){
                                  if(_key.currentState!.validate())
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const Language()),
                                    );

                                  }

                                  else ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text('please correct enter mailid & password')),
                                  );


                                }, child: Text("Login")),


                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 100,),
                    Center(
                      child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const newuser()),
                            );


                          }, child: Text("NewUser",style: TextStyle(color: Colors.greenAccent),)),
                    ),

                  ],
                ),
              ),
            ),
          )
      ),
    );
  }
}
