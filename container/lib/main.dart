import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      title: 'Container Apps',
      home: Scaffold(
        body: MyApps(),
      ),      
    ));
}

class MyApps extends StatelessWidget {
  const MyApps({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      padding: EdgeInsets.all(5),
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        top: 50,
        left: 50
      ),
      decoration: BoxDecoration(
      color: Colors.green,
      
      border: Border.all(
        color: Colors.black,
        width: 5,
        
      )
      ),
      
      child: Center(
        child: Text("This is Container"),
      ),
      transform: Matrix4.rotationZ(0.2),
    );
  }
}