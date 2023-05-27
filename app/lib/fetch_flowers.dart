import 'package:flutter/material.dart';
import 'package:app/models/flowerModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class plantFetch extends InheritedWidget {
  final flowers = <flowerStat>[];

  plantFetch({Key? key, Widget? child}) : super(key: key, child: child!);

  Future<void> fetchData() async {
    flowers.clear();
  try {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("flowerDir")
        .get();

    for (var doc in querySnapshot.docs) {
      
      final flowerTrue = flowerStat(
        plantName: doc["plantName"],
        plantKingdom: doc["plantKingdom"],
        plantFamily: doc["plantFamily"],
        plantGenus: doc["plantGenus"],
        localName: doc["localName"],
        plantDescription: doc["plantDescription"],
        url: doc["url"],
      );
      flowers.add(flowerTrue);
    }
  } catch (e) {
    print('Error fetching flowers: $e');
  }

  print('Fetched ${flowers.length} flowers');
}

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;

  static plantFetch? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<plantFetch>();
  }
}