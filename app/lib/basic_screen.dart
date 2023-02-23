import 'package:flutter/material.dart';
import 'immutable_widget.dart';
import 'text_layout.dart';

class BasicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[800],
        title: Text('Dashboard'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.edit),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Image.asset('images/preserv.app.png'),
          TextLayout(),
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
      drawer: Drawer(
        child: Container(
          color: Colors.lightGreen[800],
          child: Center(
            child: Text("I'm a drawer!"),
          ),
        ),
      ),
    );
  }
}
