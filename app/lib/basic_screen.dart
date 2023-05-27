import 'package:flutter/material.dart';
import 'text_layout.dart';
import 'app_drawer.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[800],
        title: const Text('Home'),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.edit),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Image.asset('images/preserv.app.png'),
          const TextLayout(),
        ],
      )
          // children: <Widget>[
          //   Image.asset('images/boat_orchid.jpg'),
          //   Image.asset('images/moth_orchid.jpg'),
          //   Image.asset('images/vanda_orchid.jpg'),
          //   Image.asset('images/wasp.jpg'),
          //   TextLayout(),
          // ],
          ),
      drawer: const AppDrawer(),
      // drawer: Drawer(
      //   child: Container(
      //     color: Colors.lightGreen[800],
      //     child: Center(
      //       child: Text("I'm a drawer!"),
      //     ),
    );
  }
}
