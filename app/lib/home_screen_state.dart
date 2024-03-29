import 'package:flutter/material.dart';

class HomeScreenTextField extends StatefulWidget {
  const HomeScreenTextField({Key? key}) : super(key: key);

  @override
  _HomeScreenTextFieldState createState() => _HomeScreenTextFieldState();
}

class _HomeScreenTextFieldState extends State<HomeScreenTextField> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) { 
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        controller: _textEditingController,
        decoration: const InputDecoration(
          hintText: 'Type here',
        ),
      ),
    );
  }
}
