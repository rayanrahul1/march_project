import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridviewextend(),));
}

class gridviewextend extends StatelessWidget {
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
      body: GridView.extent(maxCrossAxisExtent: 50,
        mainAxisSpacing: 50,
        crossAxisSpacing: 50,
        children:List.generate(10, (index) => Stack(
          children: [
            Container(
              color: colors[index],
            ),
            Center(
                child: Icon(Icons.connected_tv_sharp,size: 30,))
          ],
        )),),

    );
  }
}
