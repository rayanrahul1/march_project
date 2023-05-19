import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Stackex(),));
}

class Stackex extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(color: Colors.green,),
            Container(color: Colors.red,height: 350,width: 350,),
            Container(color: Colors.yellow,height: 200,width: 200,),
            Positioned(
              top: 400,right:1,
                child: Container(color: Colors.purple,height: 100,width: 200,))
          ],
        ),
      ),
    );
  }
}
