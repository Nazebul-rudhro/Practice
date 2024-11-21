import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
      
    );
  }
}

class HomeActivity extends StatelessWidget {
late double _deviceHeight, _deviceWidth;
  HomeActivity({super.key});
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    print(_deviceHeight);
    print(_deviceWidth);
    return Scaffold(
      appBar: AppBar(
        title:const Text("My Apps"),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        height: _deviceHeight *0.5,
        width: _deviceWidth,
        
        // color: const Color.fromARGB(255, 58, 44, 44),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
           Expanded(child: 
            Container(
              height: 100,
              width: _deviceWidth *0.25,
              color: Colors.green,
            ),
            ),
            Expanded(child: Container(
              height: 100,
              width: _deviceWidth,
              color: Colors.blueGrey,
            ),
            ),
          ],
        ),
      ),

    );
  }
}


