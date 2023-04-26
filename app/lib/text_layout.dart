import 'dart:html';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Welcome, User.',
          style: GoogleFonts.roboto(fontSize: 30),
          textAlign: TextAlign.center,
        ),
        // Text(
        //     'This app contains a collection of various endangered plant species around the globe. '
        //     'preserv.app aims to educate society on the importance of preserving nature, and life.',
        //     Padding(

        //     )
        // ),

        Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text(
              'This app contains a collection of various endangered plant species around the globe. '
              'Preserv.app aims to educate society on the importance of preserving nature, and life.',
            ),
          ),
        ),
        // RichText(
        //   text: TextSpan(
        //     text: 'Flutter text is ',
        //     style: TextStyle(fontSize: 22, color: Colors.black),
        //     children: <TextSpan>[
        //       TextSpan(
        //         text: 'really ',
        //         style: TextStyle(
        //           fontWeight: FontWeight.bold,
        //           color: Colors.red,
        //         ),
        //         children: [
        //           TextSpan(
        //             text: 'powerful.',
        //             style: TextStyle(
        //               decoration: TextDecoration.underline,
        //               decorationStyle: TextDecorationStyle.double,
        //               fontSize: 40,
        //             ),
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        // )
      ],
    );
  }
}
