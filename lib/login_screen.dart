// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
 
class LoginScreen extends StatefulWidget
{
  const LoginScreen({ Key? key }) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}
 
class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding:EdgeInsets.symmetric(horizontal: 15,vertical: 20),
            child: Column(
               
              children: [
                Text("Welcome" ,
                     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold), ),
                     Text("Sign in Continue" ,
                     style: TextStyle(fontSize: 20, color: Colors.grey.shade400 ),
                     ),
                     Center(
                       child: Image.asset('assets/images/ooo.jpg',
                       width: 150,
                       height: 150,),
                     ),
                       SizedBox(height: 15,),
                     TextField(
                      
                       decoration: InputDecoration(
                         labelText: "Email ID",
                         labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                         border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                       ),
                     ),
                     SizedBox(height: 15,),
                      TextField(
                       obscureText: true,
                       decoration: InputDecoration(
                         labelText: "Password",
                         labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                         border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                       ),
                     ),
                      SizedBox(height: 5,),
              Align(
                alignment: Alignment.bottomRight,
                child: Text("Forgot Password?",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
              ),
               SizedBox(height: 15,),
              GestureDetector(
                onTap: (){},
                child: Container(
                  alignment: Alignment.center,
                  height: size.height / 14,
                  width: size.width,
                  decoration: BoxDecoration(color: Colors.red,
                  borderRadius: BorderRadius.circular(5)),
                  child: Text("Login ",
                            style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold),),
                ),
              ),
               SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("A new User? " ,
                         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), ),
                  Text("Sign In" ,
                         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.red ),
                  )
                ],
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}