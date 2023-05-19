import 'package:flutter/material.dart';
import 'package:march_project/contact.dart';
import 'package:march_project/main.dart';
// void main(){
//   runApp(MaterialApp(
//     home: List_with_separator(),
//     debugShowCheckedModeBanner: false,
//     theme: ThemeData(
//     primarySwatch: Colors.teal
//     ),
//   darkTheme: ThemeData.dark(),
//     //themeMode: ThemeMode.system,
//   ));
// }

class List_with_separator extends StatelessWidget {
  var name =["black widow","doctor","hulk","iron","spider"];
  var numbers =[156165,515655,1655165,561551,1565551];
  var photo = ["assets/image/black widow.jpg",
    "assets/image/doctor stranger.jpg",
    "assets/image/hulk.jpg",
    "assets/image/iron man.jpg",
    "assets/image/spider man.jpg"];


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length:5,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.message),),
        // appBar: AppBar(
        //   title: Text("my contact"),
        //   actions: [
        //     IconButton(onPressed: (){
        //     }, icon:Icon(Icons.sunny)),
        //     SizedBox(width: 10,),
        //     Icon(Icons.camera_alt),
        //     PopupMenuButton(itemBuilder: (contact){
        //       return [
        //         PopupMenuItem(child: Text("settings")),
        //         PopupMenuItem(child: Text("new gruop")),
        //         PopupMenuItem(child: Text("community")),
        //         PopupMenuItem(child: Text("payment"))
        //       ];
        //     })
        //   ],
        //   bottom: TabBar(tabs:[
        //     IconButton(onPressed: (){}, icon:Icon(Icons.camera_alt))
        //   ]),
        //
        // ),
        body: ListView.separated(
            itemBuilder: (contact,index){
              return Card(
                child: ListTile(
                leading:CircleAvatar(backgroundImage: AssetImage(photo[index]),),
                title: Text(name[index]),
                subtitle: Text("${numbers[index]}"),
              ),);
            },
            separatorBuilder: (cntx , index){
              return Divider(thickness: 20,color: Colors.deepPurple,);
            },
            itemCount: name.length,
        ),
      ),
    );
  }
}
