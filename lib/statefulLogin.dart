                                                                                                                                                                                                                            import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:march_project/contact.dart';
// void main(){
//   runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Loginpage2(),));
// }

class Loginpage2 extends StatefulWidget {



  @override
  State<Loginpage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<Loginpage2> {
  var formkey =GlobalKey<FormState>();
  bool showpwd =true;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Login stateful"),),
      body:Form(
        key: formkey,
        child: Column(
          children: [
            const Center(
                child: Text("Loginpage",style:TextStyle(fontSize: 50),)),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration:const InputDecoration(
                hintText: "Username",
                border: OutlineInputBorder(),
               fillColor: Colors.red,
                prefixIcon: Icon(Icons.email),
                ),
                validator: (uname){
                  if(uname!.isEmpty || !uname.contains('@')){
                    return "Email id invalid";

                  }else{
                    return null;
                  }

                },
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: showpwd,
                decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.password),
                suffixIcon: IconButton(onPressed: (){
                  setState(() {
                    if (showpwd){
                      showpwd = false;
                    }else{
                      showpwd = true;
                    }
                  });
                },
                    icon: Icon(showpwd == true
                   ? Icons.visibility_off
                        : Icons.visibility))),
                validator:(password){
                  if(password!.isEmpty || password.length < 6){
                    return "Nota a valid password";
                  }else{
                    return null;
                  }
                },
              ),
            ),
            ElevatedButton(onPressed: (){
              final valid = formkey.currentState!.validate();
              if(valid){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>contact()));
              }else{
                Fluttertoast.showToast(
                    msg: "Login Failed",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    ///timeInSecForIosWeb: 1, // ios
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0
                );

              }
            }, child:Text("Login here")),
            TextButton(onPressed:(){}, child:Text("signup here")),

          ],
        ),
      ),
    );
  }
}
