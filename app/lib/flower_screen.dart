import 'package:flutter/material.dart';
import 'package:app/models/flowerModel.dart';

class FlowerScreen extends StatelessWidget {
  final flowerStat plant;

  const FlowerScreen({super.key, required this.plant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(plant.plantName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(plant.url),
            Text(plant.plantName),
          ],
        ),
      ),
    );
  }
}
