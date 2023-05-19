import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:march_project/contact.dart';
import 'package:march_project/loginpage.dart';
void main(){
  runApp(MaterialApp(home: registration(),));
}

class registration extends StatefulWidget {


  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {

  bool cshowpwd = true;
  bool showpwd = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Registration page"),
      ),
      body: Form(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Center(child: Text("Registration Here",style:TextStyle(fontSize: 30,color: Colors.red),)),
            SizedBox(height:3,),
            Text("Fill the following details",style: GoogleFonts.darkerGrotesque(fontSize: 20),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Username",
                      prefixIcon:Icon(Icons.account_circle_rounded),
                      border: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(20)
                      )

                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    obscureText: showpwd,
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          if(showpwd){
                            showpwd = false;
                          }else{
                            showpwd = true;
                          }
                        });
                      }, icon:Icon(showpwd == true?
                      Icons.visibility_off
                          :Icons.visibility)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),

                  ),
                  SizedBox(height: 10,),
                  TextField(
                    obscureText: cshowpwd,
                    decoration: InputDecoration(
                      hintText: "Confirm password",
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          if (cshowpwd){
                            cshowpwd =false;
                          }else{
                            cshowpwd = true;
                          }
                        });
                      }, icon:Icon(cshowpwd == true
                      ? Icons.visibility_off : Icons.visibility)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Loginpage()));
                  }, child: Text("Sign Up"),
                  style:ElevatedButton.styleFrom(minimumSize: Size(300, 50),primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                    )
                  ),),
                  Row(
                    children: [
                      SizedBox(width: 80,),
                      Text("Do you have an account?"),
                      TextButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Loginpage()));
                      }, child: Text("Login"))
                    ],
                  )


                ],
              ),

            ),

          ],
        ),

      ),
    );
  }
}
