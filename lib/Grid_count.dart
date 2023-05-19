import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridcount(),));
}

class gridcount extends StatelessWidget {
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
      body: GridView.count(
        crossAxisCount: 2,
      children:List.generate(10, (index) => Container(
          color: colors[index],
        child: Center(
        child: Text("hello"),

        ),
      )),)
    );
  }
}
