import 'package:flutter/material.dart';
import 'package:march_project/List_with_separator.dart';
import 'package:march_project/Listview_builder.dart';
import 'package:march_project/contact.dart';
import 'package:march_project/main.dart';
import 'package:march_project/statefulLogin.dart';
void main(){
  runApp(MaterialApp(home: whatsapptab(),
    debugShowCheckedModeBanner: false,
  theme: ThemeData(primarySwatch: Colors.teal),
//  darkTheme: ThemeData.dark(),
  ));
}

class whatsapptab extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
        child:Scaffold(
          appBar: AppBar(
            title: Text("WhatsApp"),
            actions: [
              IconButton(onPressed: (){}, icon:Icon(Icons.camera_alt)),
              IconButton(onPressed: (){}, icon:Icon(Icons.search_rounded)),
              PopupMenuButton(itemBuilder: (context){
                return [
                  PopupMenuItem(child: Text("New group")),
                  PopupMenuItem(child: Text("New broadcast")),
                  PopupMenuItem(child: Text("Linked devices")),
                  PopupMenuItem(child: Text("Starred messages")),
                  PopupMenuItem(child: Text("Payment")),
                  PopupMenuItem(child: Text("Settings")),
                ];
              })
            ],
            bottom: PreferredSize(
              preferredSize:Size.fromHeight(AppBar().preferredSize.height),
              child: TabBar(
                isScrollable: true,
                 indicatorSize: TabBarIndicatorSize.label,
                  labelPadding: EdgeInsets.zero,
                  tabs: [
               SizedBox(
                   width: MediaQuery.of(context).size.width *.1,
                   child: Tab(icon: Icon(Icons.people_alt_rounded),)),
                SizedBox(
                  width: MediaQuery.of(context).size.width*.3,
                    child: Tab(text: "Chat",)),
                SizedBox(
                    width: MediaQuery.of(context).size.width *.3,
                    child: Tab(text: "Status",)),
                SizedBox(
                  width: MediaQuery.of(context).size.width *.3,
                    child: Tab(text: "Call",))
                
              ]),
            ),
          ),
          body: TabBarView(children: [
            List_with_separator(),
            builder(),
            Loginpage2(),
            MyApp()
          ]),
        ));
  }
}
