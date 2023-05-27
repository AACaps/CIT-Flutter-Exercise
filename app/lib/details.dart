import 'package:flutter/material.dart';

class PlantDetails extends StatelessWidget {
  final String imageUrl;
  final String flowerTitle;
  final String flowerDesc;

  const PlantDetails ({super.key,
    required this.imageUrl,
    required this.flowerTitle,
    required this.flowerDesc
  });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Details'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            flowerTitle,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Text(
            flowerDesc,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 16),
          Image.asset(imageUrl),
        ],
      ),
    );
  }
}

