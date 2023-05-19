import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:march_project/statefulLogin.dart';

import 'loginpage.dart';

// void main(){
//   runApp(
//     MaterialApp(debugShowCheckedModeBanner:false,
//         home : MyApp(),
//     theme: ThemeData(primarySwatch: Colors.cyan),), // Wrap your app
//   );
// }
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();// to convert myapp which is currently immutable to a mutable state
}

class _MyAppState extends State<MyApp> {
  @override
  // void initState() {
  //   // TODO: implement initState
  //   Timer(Duration(seconds: 5), () {
  //     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Loginpage2()));
  //   });
  //   super.initState();
  // }
  /// ui will create only after execution of this function
  /// buildcontext => locate and access each widgets in the widget tree


  @override
  Widget build(BuildContext context) {
    ///area below status bar
    return  Scaffold(
      backgroundColor: Colors.white,

        body: Container(
          width: double.infinity,
          height: double.infinity,
         ///setting background
       //   color: Colors.lightGreenAccent,
         decoration: const BoxDecoration(
         //  image: DecorationImage(
            // fit: BoxFit.cover,
              // image:AssetImage("assets/image/img.png"))
              // image:NetworkImage("https://images.unsplash.com/photo-1561149877-84d268b"
              // "a65b8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YXZlbmdlcnN8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60") )
          // color: Colors.blue
        // ) ,
          gradient:LinearGradient(
              colors: [
              Colors.white,
              Colors.black87,
              Colors.green,
              Colors.yellow,
              Colors.red,
              Colors.blue,
              Colors.indigo,

              ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,


          )),
          child: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              // Icon(Icons.accessibility_new,size:150,color: Colors.orange),
                Image.asset("assets/image/img.png",height: 100,width:250),
                //Image.network("https://images.unsplash.com/photo-1561149877-84d268ba65b8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YXZlbmdlcnN8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60"),
                  Text("Avengers",
                   style: GoogleFonts.lobsterTwo(
                     color: Colors.black,fontSize:70,fontWeight: FontWeight.w900,
                   ),
                   //style:TextStyle(
                 //    fontSize:70,color: Colors.black,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)
                ),
              ],
            ),
          ),
        )
    );

  }
}
