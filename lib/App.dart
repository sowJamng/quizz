import 'package:flutter/material.dart';
import 'Home.dart';
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Quizzz",style: new TextStyle(),),
      ),
      backgroundColor: Colors.white,
      body:new HomeQuestion() ,
    );//new Text("Bonjour");// Container();

  }

}
