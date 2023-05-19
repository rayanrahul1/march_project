import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridview(),debugShowCheckedModeBanner: false,));
}

class gridview extends StatelessWidget {
  var photo = ["assets/image/black widow.jpg",
    "assets/image/doctor stranger.jpg",
    "assets/image/hulk.jpg",
    "assets/image/iron man.jpg",
    "assets/image/spider man.jpg",
    "assets/image/black widow.jpg",
    "assets/image/doctor stranger.jpg",
    "assets/image/hulk.jpg",
    "assets/image/iron man.jpg",
    "assets/image/spider man.jpg"];

 var colors = [
  Colors.redAccent,
  Colors.yellow,
  Colors.purple,
  Colors.green,
  Colors.grey,
  Colors.pink,
  Colors.deepPurple,
  Colors.deepOrange,
   Colors.teal,
   Colors.amber
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview"),
      ),
      body: GridView(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,
            crossAxisSpacing: 30,
        mainAxisSpacing: 10),
        children:List.generate(10, (index) => Container(
          decoration: BoxDecoration(
            image:DecorationImage(image:AssetImage(photo[index]),fit: BoxFit.fill) ,
            borderRadius: BorderRadius.circular(10),
            color: colors[index],
            boxShadow: [
              BoxShadow(
                color: Colors.indigoAccent,
                blurRadius: 5,
                spreadRadius: 2,
                offset: Offset(2, 8),

              )
            ]
          ),
          // child: Card(
          //   color: colors[index],
            child: Center(
              child: Text("hello",style: TextStyle(color: Colors.black),),
          //   ),
           ),
        )),
        // children: [
        //   Card(child: Center(
        //     child: Text("hello"),
        //   ),),
        //   Card(child: Center(
        //     child: Text("hello"),
        //   ),),
        //   Card(child: Center(
        //     child: Text("hello"),
        //   ),),
        //   Card(child: Center(
        //     child: Text("hello"),
        //   ),),
        //   Card(child: Center(
        //     child: Text("hello"),
        //   ),),
        //   Card(child: Center(
        //     child: Text("hello"),
        //   ),),
        //   Card(child: Center(
        //     child: Text("hello"),
        //   ),),
        //   Card(child: Center(
        //     child: Text("hello"),
        //   ),),
        // ],
      ),
    );
  }
}
