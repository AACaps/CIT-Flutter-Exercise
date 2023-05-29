import 'package:flutter/material.dart';

class aboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title: Text('About Us'),
        ),
        body:
        Padding(
        padding: const EdgeInsets.all(16.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: screenWidth,
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 8),
                    Image.asset(
                      'assets/images/preserv.app.png',
                      width: 100,
                      height: 100,
                    ),
            Text(
            'preserv.app',
            style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(height: 8),
            Text(
            '    At Preserv.app, we are passionate about protecting and celebrating the incredible diversity of endangered plant species that inhabit our planet. Our mobile app is designed to provide a captivating experience, allowing you to explore and learn about these precious plants from the convenience of your smartphone. Our mission is to raise awareness about the critical need for conservation and inspire individuals to take action. With Preserv.app, we aim to foster a deep appreciation for the natural world and empower users to contribute to the preservation of endangered plants.',
            textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.bodyMedium,
            ),
                  ]
                ),
            ),
            ],
          ),
          ),
          );
        
  }
}