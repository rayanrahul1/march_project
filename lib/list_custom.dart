import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: listcustom(),debugShowCheckedModeBanner: false,));
}

class listcustom extends StatelessWidget {
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
      body: ListView.custom(
        // childrenDelegate:SliverChildListDelegate(
      //     [
      //    Card(color: Colors.red,child: Center(child: Icon(Icons.add),),),
      //    Card(color: Colors.purple,child: Center(child: Icon(Icons.add),),),
      //    Card(color: Colors.yellow,child: Center(child: Icon(Icons.add),)),
      //    Card(color: Colors.redAccent,child: Center(child: Icon(Icons.add))),
      // ]
      //   List.generate(10,
      //           (index) => Card(
      //             color: colors[index],
      //             child: Center(
      //               child: Icon(Icons.add),
      //             ),
      //
      //
      //   ))
      // )),
      childrenDelegate: SliverChildBuilderDelegate((context, index) => Card(
        color: colors[index],
        child: Center(
          child: Icon(Icons.add),
        ),
      ),
      childCount: 10
      ),
    ));
  }
}
