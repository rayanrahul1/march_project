import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:march_project/main.dart';
import 'package:march_project/registration.dart';

import 'contact.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Loginpage(),));
}

class Loginpage extends StatelessWidget {
  var formkey = GlobalKey<FormState>();
  ///predefind username and password
  String username = "admin";
  String password = "abc123";

  ///controller for fetching data from controller
  TextEditingController uname = TextEditingController();
  TextEditingController pass =TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("loginpage"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset("assets/icons/OIP.jpeg",height: 100,width: 150,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: uname,
                  decoration: InputDecoration(
                    fillColor:Colors.orange,
                    filled: true,
                    prefixIcon: Icon(Icons.email_outlined),
                    helperText: " must be an email",
                    hintText: "username",
                    labelText: "username",
                    border: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(60)
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: pass,
                  decoration:InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(Icons.password),

                    helperText: "password must be an 6 characters",
                    hintText: "password",
                    labelText: "password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60)
                    )
                  ) ,),
              ),
              ElevatedButton(onPressed: (){
                final valid = formkey.currentState!.validate();
                if(valid){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyApp()));
                }else{
                  Fluttertoast.showToast(
                      msg: "login faild",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                     // timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );
                }
                String email = uname.text.trim();
                String pwd   = pass.text.trim();
                if(email != "" && pwd !=""){
                  if(username==email && password==pwd){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>contact()));

                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("username or password missmatch")));
                  }
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content:Text("Fields cannot be empty")));
                }

              }, child:Text("login")),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => registration()));
              }, child:Text("Not a User?.... Register Here!!!")),
              TextButton(onPressed: (){}, child:Text("skip"))


            ],

          ),
        ),
      ),
    );
  }
}
