import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridcustom(),));
}

class gridcustom extends StatelessWidget {
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
      body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 30),
          childrenDelegate:
           SliverChildBuilderDelegate((context, index) => Card(
            color:colors[index],
            child: Center(
              child: Text("hello"),
            ),
           ),childCount:10
          )
            // or (childrn Delegate 2 program)
        // SliverChildListDelegate(
        //     List.generate(10, (index) => Card(
        //       color: colors[index],
        //       child: Center(
        //         child: Text("hello"),
        //       ),
        //     )))
      ),
    );
  }
}

