import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,home: contact(),
  ));
}

class contact extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My contact"),
        actions: [
          Icon(Icons.search_rounded),
          SizedBox(width: 10,),
          Icon(Icons.account_circle_rounded),
          SizedBox(width: 10,)
        ],
      ),
      body: ListView(
        children: [
          Card(
            color:Colors.grey,
              child: ListTile(
              title: Text("Iron man"),
              subtitle: Text("65656555556"),
             // leading:Icon(Icons.contact_mail_rounded),
                leading: CircleAvatar(backgroundImage:AssetImage("assets/image/iron man.jpg")),
              trailing: Wrap(
                children: [
                  Icon(Icons.phone),
                  SizedBox(width: 10,),
                  Icon(Icons.message_rounded),
                  SizedBox(width: 10,),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),)),
          Card(
            color: Colors.grey,
              child: ListTile(
                  title: Text("Thor"),
              subtitle: Text("565656565"),
              leading:CircleAvatar(backgroundImage: AssetImage("assets/image/thor.jpg"),),
              trailing: Wrap(children: [
                Icon(Icons.phone),
                SizedBox(width: 10,),
                Icon(Icons.message_rounded),
                SizedBox(width: 10,),
                Icon(Icons.arrow_forward_ios)
              ],),)),
          Card(
            color: Colors.grey,
              child: ListTile(
                  title: Text("Spider Man"),
              subtitle: Text("1565565611"),
              leading: CircleAvatar(backgroundImage: AssetImage("assets/image/spider man.jpg"),),
                trailing:Wrap(children: [
                  Icon(Icons.phone),
                  SizedBox(width: 10,),
                  Icon(Icons.message_rounded),
                  SizedBox(width: 10,),
                  Icon(Icons.arrow_forward_ios)

                ],)
              )),
          Card(
              color: Colors.grey,
              child: ListTile(
                  title: Text("Doctor stranger"),
                  subtitle: Text("586578678"),
                  leading: CircleAvatar(backgroundImage: AssetImage("assets/image/doctor stranger.jpg"),),
                  trailing:Wrap(children: [
                    Icon(Icons.phone),
                    SizedBox(width: 10,),
                    Icon(Icons.message_rounded),
                    SizedBox(width: 10,),
                    Icon(Icons.arrow_forward_ios)

                  ],)
              )),
          Card(
              color: Colors.grey,
              child: ListTile(
                  title: Text("Hulk"),
                  subtitle: Text("454354365"),
                  leading: CircleAvatar(backgroundImage: AssetImage("assets/image/hulk.jpg"),),
                  trailing:Wrap(children: [
                    Icon(Icons.phone),
                    SizedBox(width: 10,),
                    Icon(Icons.message_rounded),
                    SizedBox(width: 10,),
                    Icon(Icons.arrow_forward_ios)

                  ],)
              )),
          Card(
              color: Colors.grey,
              child: ListTile(
                  title: Text("Black widow"),
                  subtitle: Text("54524534"),
                  leading: CircleAvatar(backgroundImage: AssetImage("assets/image/black widow.jpg"),),
                  trailing:Wrap(children: [
                    Icon(Icons.phone),
                    SizedBox(width: 10,),
                    Icon(Icons.message_rounded),
                    SizedBox(width: 10,),
                    Icon(Icons.arrow_forward_ios)

                  ],)
              )),

        ],
      ),
    );
  }
}
