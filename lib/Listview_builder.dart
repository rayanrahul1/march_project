import 'package:flutter/material.dart';
// void main(){
//   runApp(MaterialApp(debugShowCheckedModeBanner: false,home: builder(),));
// }

class builder  extends StatelessWidget {
  var name =["black widow","doctor","hulk","iron","spider"];
  var numbers =[156165,515655,1655165,561551,1565551];
  var photo = ["assets/image/black widow.jpg",
    "assets/image/doctor stranger.jpg",
    "assets/image/hulk.jpg",
    "assets/image/iron man.jpg",
    "assets/image/spider man.jpg"];
  var colors =[Colors.grey,Colors.pinkAccent,Colors.amber,Colors.red,Colors.cyan];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("List with builder"),),
      floatingActionButton:FloatingActionButton(onPressed: (){}, child:Icon(Icons.message_rounded),),
      body:Column(
        children: [
          SizedBox(
            height: 300,
            child: ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (context,index){
              return Card(
                color:(colors[index]),
                child: ListTile(
                  title:Text(name[index]),
                  subtitle: Text("${numbers[index]}"),
                  leading: CircleAvatar(backgroundImage: AssetImage("${photo[index]}")),
                  trailing:Wrap(children: [
                    Icon(Icons.phone),
                    Icon(Icons.message)
                  ],),
                ),
              );
            },
              itemCount: name.length,
            ),
          ),
          SizedBox(height: 50,),
          Image.asset("assets/image/thor.jpg"),
        ],
      ),

    );
  }
}
